FROM bitwalker/alpine-elixir:latest

# Install NPM
RUN \
    mkdir -p /opt/app && \
    chmod -R 777 /opt/app && \
    apk update && \
    apk --no-cache --update add \
      git make g++ wget curl inotify-tools \
      nodejs nodejs-npm && \
    npm install npm -g --no-progress && \
    update-ca-certificates --fresh && \
    rm -rf /var/cache/apk/*

# Set exposed ports
EXPOSE 5000
ENV PORT=5000 MIX_ENV=dev

# Install Phoenix v1.2
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-1.2.5.ez

# Cache elixir deps
ADD mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

# Same with npm deps
ADD package.json .
RUN npm install

ADD . .

# Run frontend build, compile, and digest assets
RUN npm run deploy && \
    cd - && \
    mix do compile, phoenix.digest

# USER default

CMD mix ecto.create \
 && mix ecto.migrate \
 && mix phoenix.server