defmodule PrependTest do
  use ExUnit.Case
  doctest Prepend

  test "prepends string to lines" do
    expected = ["$ one", "$ two"]

    received =
      ["one", "two"]
      |> Prepend.stream_lines("$ ")
      |> Enum.to_list()

    assert received == expected
  end

  test "handles multiple words" do
    expected = ["I like ice cream", "I like pizza", "I like cats"]

    received =
      ["ice cream", "pizza", "cats"]
      |> Prepend.stream_lines("I like ")
      |> Enum.to_list()

    assert received == expected
  end
end
