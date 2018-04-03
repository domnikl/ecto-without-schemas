defmodule DbsampleTest do
  use ExUnit.Case
  doctest Dbsample

  test "greets the world" do
    assert Dbsample.hello() == :world
  end
end
