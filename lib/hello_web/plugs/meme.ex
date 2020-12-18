defmodule HelloWeb.Plugs.Meme do
  import Plug.Conn

  @memes ["trollface", "bebe dançando", "matheus"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"meme" => meme }} = conn, _default) when meme in @memes do
    assign(conn, :meme, meme)
  end

  def call(conn, default) do
    assign(conn, :meme, default)
  end
end
