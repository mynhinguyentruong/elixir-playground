defmodule NEWAPP.Supervisor do
  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
    IO.puts("SUper visor started")
  end

  @impl true
  def init(:ok) do
    children = [
      {NEWAPP.Registry, name: NEWAPP.Registry},

    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
