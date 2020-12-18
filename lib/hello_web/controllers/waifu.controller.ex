defmodule HelloWeb.WaifuController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Waifu, "This is not a Best Waifu!" when action in [:index]

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
