ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(WallabyIssue487.Repo, :manual)

{:ok, _} = Application.ensure_all_started(:wallaby)

Application.put_env(:wallaby, :base_url, WallabyIssue487Web.Endpoint.url)