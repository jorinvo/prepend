defmodule Mix.Tasks.Prepend do
  @moduledoc false

  use Mix.Task

  @shortdoc "prepend stdin with args string"
  def run(argv) do
    Prepend.CLI.main(argv)
  end
end
