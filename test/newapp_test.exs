defmodule NEWAPPTest do
  use ExUnit.Case
  doctest NEWAPP

  test "greets the world" do
    assert NEWAPP.hello() == :nhi
  end
end
