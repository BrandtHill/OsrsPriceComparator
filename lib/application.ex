defmodule OsrsPriceComparator.Application do

  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: OsrsPriceComparator.Endpoint, port: 5000, ip: {0,0,0,0}}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: OsrsPriceComparator.Supervisor)
  end

end
