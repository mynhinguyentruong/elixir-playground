defmodule NEWAPP.Bucket do
  use Agent

  @doc """
  Start a new Bucket.
  """

  def start_link(_opts) do
    Agent.start_link(fn -> %{} end)
  end

  @doc """
  Get a value with a key from the Bucket
  """
  def get(bucket_pid, key) do
    Agent.get(bucket_pid, fn map -> Map.get(map, key) end)
  end

#  def getState(bucket_pid, key) do
#    Agent.get(bucket_pid, &Map.get(&1, key))
#  end

  @doc """
  update a value at key
  """
  def put(bucket_pid, key, value) do
    Agent.update(bucket_pid, fn map -> Map.put(map, key, value) end)
  end

#  def put(bucket_pid, key, value) do
#    Agent.update(bucket_pid, &Map.put(&1, key, value))
#  end


end

