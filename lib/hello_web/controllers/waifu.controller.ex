defmodule HelloWeb.WaifuController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Waifu, "None or Not Best Waifu" when action in [:index, :api_waifus]

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def api_waifus(conn, _params) do
    json(conn, %{waifus: conn.assigns.waifusArray})
  end
end
