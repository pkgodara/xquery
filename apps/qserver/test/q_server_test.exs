defmodule QServerTest do
  use ExUnit.Case
  doctest QServer

  test "greets the world" do
    assert QServer.hello() == :world
  end
end
