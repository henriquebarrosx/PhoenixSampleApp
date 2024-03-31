defmodule SampleAppWeb.StaticPageController do
  use SampleAppWeb, :controller

  def home(conn, _options) do
    render(conn, "home.html", %{page_title: "Home"})
  end

  def help(conn, _options) do
    render(conn, "help.html", %{page_title: "Help"})
  end

  def about(conn, _options) do
    render(conn, "about.html", %{page_title: "About"})
  end
end
