defmodule WallabyIssue487Web.DashboardLive do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(WallabyIssue487Web.PageView, "dashboard.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, %{})}
  end
end
