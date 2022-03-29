defmodule CdGigalixirWeb.PageController do
  use CdGigalixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
