defmodule Prepend.CLI do
  @moduledoc """
  Prepend is best used as command line utility:

  ./prepend '$ ' < file.txt
  """

  def main(args \\ []) do
    stdio = IO.stream(:stdio, :line)

    stdio
    |> Prepend.stream_lines(Enum.join(args, " "))
    |> Stream.into(stdio)
    |> Stream.run()
  end
end
