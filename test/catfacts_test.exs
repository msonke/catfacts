defmodule CatfactsTest do
  use ExUnit.Case
  doctest Catfacts

  test "greets the world" do
    assert Catfacts.hello() == :world
  end
end
