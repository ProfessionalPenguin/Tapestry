defmodule Proj3.Project3 do
  use Application

  def start(_type, _args) do
     args = System.argv()
     nodes = String.to_integer(Enum.at(args, 0))
     hops = String.to_integer(Enum.at(args, 1))
    System.no_halt(true)

    children =

        [Proj3.NodeSupervisor,
          {Proj3.MainServer , {nodes,hops} }
        ]


    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_all, name: Assign2.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
