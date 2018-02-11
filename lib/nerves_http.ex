defmodule NervesHttp do
  alias Nerves.Network

  def start(_type, _args) do
    Network.setup "wlan0" 
  end
end
