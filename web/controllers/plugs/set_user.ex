defmodule Discuss.Plugs.SetUser do
  import Plug.Conn
  import Phoenix.Controller

  alias Discuss.Repo
  alias Discuss.User

  def init(_params) do
  end

  def call(conn, _params) do
    user_id = get_session(conn, :user_id) # get_session comes from Phoenix.Controller

    cond do
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user) # assign comes from Plug.Conn
      true ->
        assign(conn, :user, nil)
    end
  end

end
