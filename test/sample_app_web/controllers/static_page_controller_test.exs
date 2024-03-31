defmodule SampleAppWeb.StaticPageControllerTest do
  use SampleAppWeb.ConnCase
  use AssertHTML

  @base_title "Phoenix Tutorial Sample App"

  test "should get home page", %{conn: conn} do
    conn = get(conn, ~p"/static-pages/home")

    html_response(conn, 200)
    |> assert_html("title", text: "Home · #{@base_title}")
  end

  test "should get help page", %{conn: conn} do
    conn = get(conn, ~p"/static-pages/help")

    html_response(conn, 200)
    |> assert_html("title", "Help · #{@base_title}")
  end

  test "should get about page", %{conn: conn} do
    conn = get(conn, ~p"/static-pages/about")

    html_response(conn, 200)
    |> assert_html("title", "About · #{@base_title}")
  end
end
