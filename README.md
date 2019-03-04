# Discuss

## Overview

This is the sample application developed during the following course: [The Complete Elixir and Phoenix Bootcamp](https://www.udemy.com/the-complete-elixir-and-phoenix-bootcamp-and-tutorial)

To make it easier to run and tinker with, docker has been added to spin it up with a postgres db to enable one command deployment.

The `Dockerfile` makes use of pieces of [Bitwalker's](https://github.com/bitwalker) Dockerfiles. Because the course covers Phoenix 1.2, however, his latest [bitwalker/alpine-elixir-phoenix](https://hub.docker.com/r/bitwalker/alpine-elixir-phoenix/dockerfile) couldn't be used.

## Quick Start Windows 10

Install Docker, optionally via [Chocolatey](https://chocolatey.org/install):

```cli
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install -y docker-desktop
```

Run the application

```cli
docker-compose up
```


## Local run biolerplate instructions.

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Future Work

Switch from Bitwalker's image to the official [Elixir](https://hub.docker.com/_/elixir) image since this project does not rely on the originally targeted image: [bitwalker/alpine-elixir-phoenix](https://hub.docker.com/r/bitwalker/alpine-elixir-phoenix/dockerfile)