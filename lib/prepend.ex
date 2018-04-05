defmodule Prepend do
  @moduledoc false

  @doc """
  Prepend the given string to each line if a stream
  and returns a stream of the resulting lines.
  """
  @spec stream_lines(Enumerable.t(), String.t()) :: Enumerable.t()
  def stream_lines(in_stream, str) do
    in_stream |> Stream.map(&(str <> &1))
  end
end
