defmodule Basic do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [])
  end

  @impl true
  def init(init_state) do
    IO.puts("init ran")
    {:ok, init_state}
  end

  def get_current_state(pid) do
    GenServer.call(pid, {:get_the_state})
  end

  def push(pid, element) do
    GenServer.cast(pid, {:mutate_state_by_pushing_element, element})
  end

  def pop(pid) do
    GenServer.call(pid, :pop)
  end

  def handle_call(:pop, _from, current_state) do
    if (length(current_state) > 0) do
      [_ | tail] = current_state
      {:reply, tail, tail}
    else {:reply, current_state, current_state}
    end

  end

  @impl true
  def handle_call({:get_the_state}, _from, current_state) do
    {:reply, current_state, current_state}
  end

  @impl true
  def handle_cast({:mutate_state_by_pushing_element, element}, current_state) do
    {:noreply, [element | current_state]}
  end


end
