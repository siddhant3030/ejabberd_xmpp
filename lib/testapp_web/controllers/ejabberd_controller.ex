# defmodule TestappWeb.EjabberdController do
#   use TestappWeb, :controller

#   require Record
#   Record.defrecord :jid, Record.extract(:jid, from: "deps/xmpp/include/jid.hrl")

#   plug :action

#   def index(conn, _params) do
#     # get online jid, parse and extract the user part.
#     online_users = :ejabberd_sm.connected_users
#                       |> Enum.map &(jid(:jid.decode(&1), :user))
#     render conn, "index.html", users: online_users
#   end
# end
