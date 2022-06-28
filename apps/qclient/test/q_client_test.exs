defmodule QClientTest do
  use ExUnit.Case
  doctest QClient

  test "greets the world" do
    assert QClient.hello() == :world
  end
end
