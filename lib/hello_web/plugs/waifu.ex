defmodule HelloWeb.Plugs.Waifu do
  import Plug.Conn

  @bestwaifus ["Chizuru", "Kurisu", "Emilia"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"waifu" => waifu }} = conn, _default) when waifu in @bestwaifus do
    IO.puts(@bestwaifus)
    conn
    |> assign(:list, Enum.join(@bestwaifus, ", "))
    |> assign(:waifu, waifu)
  end

  def call(conn, default) do
    conn
    |> assign(:list, Enum.join(@bestwaifus, ", "))
    |> assign(:waifusArray, @bestwaifus)
    |> assign(:waifu, default)
  end
end
