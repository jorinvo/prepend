defmodule PrependTest do
  use ExUnit.Case, async: true
  use ExUnitProperties

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

  @tag timeout: 300_000
  property "streams" do
    check all lines <- list_of(string(:printable)),
              prefix <- string(:printable),
              max_runs: 1000 do
      lines
      |> Prepend.stream_lines(prefix)
      |> Stream.each(&String.starts_with?(&1, prefix))
    end
  end
end
