defmodule Proj3.NodeSupervisor do
  use DynamicSupervisor

  def start_link(_) do
    DynamicSupervisor.start_link(__MODULE__, :no_args, name: __MODULE__)
  end

  def init(:no_args) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

   def add_node() do
     {:ok, pid} = DynamicSupervisor.start_child(__MODULE__, Proj3.Node )
    pid
    end
end
