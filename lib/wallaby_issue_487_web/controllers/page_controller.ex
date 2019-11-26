defmodule WallabyIssue487Web.PageController do
  use WallabyIssue487Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
