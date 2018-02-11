defmodule NervesHttp.Application do
  use Application

  alias Nerves.Network

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # worker(NervesHttp.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NervesHttp.Supervisor]

    Network.setup "wlan0" 

    Supervisor.start_link(children, opts)
  end
end
