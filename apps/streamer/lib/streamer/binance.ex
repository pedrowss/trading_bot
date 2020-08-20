defmodule Streamer.Binance do
  use WebSockex

  @stream_base_endpoint "wss://stream.binance.com:9443/ws/"

  def start_link(symbol, state) do
    WebSockex.start_link("#{@stream_base_endpoint}#{symbol}@trade", __MODULE__, state)
  end

  def handle_frame({type, msg}, state) do
    {:ok, state}
  end
end
