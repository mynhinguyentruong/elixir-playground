defmodule NEWAPP do
  @moduledoc """
  Documentation for `NEWAPP`.
  """
  use Application
  @doc """
  Hello world.

  ## Examples

      iex> NEWAPP.hello()
      :nhi

  """
  def hello do
    :nhi
  end

  def start(_types, _args) do
    IO.puts("I'm running")
    children = [
      {Registry, keys: :unique, name: Registry.Random}
    ]
    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
