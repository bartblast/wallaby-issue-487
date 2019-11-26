defmodule WallabyIssue487.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    timestamps()

    field :email, :string
  end

  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:email])
  end
end
