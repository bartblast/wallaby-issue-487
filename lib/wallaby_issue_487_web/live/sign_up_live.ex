defmodule WallabyIssue487Web.SignUpLive do
  use Phoenix.LiveView

  alias WallabyIssue487.User
  alias WallabyIssue487Web.Router.Helpers, as: Routes

  def render(assigns) do
    Phoenix.View.render(WallabyIssue487Web.PageView, "sign_up.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, assign(socket, %{changeset: User.changeset(%User{})})}
  end

  def handle_event("save", %{"user" => params}, socket) do
    # case Accounts.create_user(params) do
        {:noreply, socket |> live_redirect(to: Routes.live_path(socket, WallabyIssue487Web.DashboardLive))}

  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       {:noreply, assign(socket, changeset: changeset)}
  #   end
  end
end
