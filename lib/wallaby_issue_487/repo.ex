defmodule WallabyIssue487.Repo do
  use Ecto.Repo,
    otp_app: :wallaby_issue_487,
    adapter: Ecto.Adapters.Postgres
end
