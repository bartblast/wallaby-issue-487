defmodule WallabyIssue487.SignUpTest do
  use WallabyIssue487.FeatureCase
  import Wallaby.Query, only: [css: 1, css: 2]

  test "example", %{session: session} do
    session
    |> visit("/sign-up")
    |> click(css("button"))

    :timer.sleep(1000)

    take_screenshot(session)

    assert_has(session, css("div", text: "Dashboard"))
    assert current_path(session) == "/dashboard"
  end
end
