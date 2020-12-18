defmodule HelloWeb.LolController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Meme, "None" when action in [:showlmao]

  def mainpage(conn, _params) do
    render(conn, "index.html")
  end

  def showlmao(conn, %{"lmao" => lmao}) do
    render(conn, "lmao.html", lmao: lmao)
  end

  def index(conn, %{"lmao" => lmao}) do
    json(conn, %{message: lmao, error: false})

  end

  @spec invalid(Plug.Conn.t(), any) :: Plug.Conn.t()
  def invalid(conn, _params) do
    conn
    |> put_status(400)
    |> json(%{message: "Not Specified Lmao", error: true})
  end
end
