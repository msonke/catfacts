defmodule Catfacts do
  @moduledoc """
  Documentation for `Catfacts`.
  """

  @doc """
  Basically just practice with api calls in elixir.

  ## Examples

      iex> Catfacts.hello()
      :world

  """

  url = "https://cat-fact.herokuapp.com/facts"

  case HTTPoison.get(url) do
    {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
      IO.puts body
    {:ok, %HTTPoison.Response{status_code: 404}} ->
      IO.puts "Not found :("
    {:error, %HTTPoison.Error{reason: reason}} ->
      IO.inspect reason
  end

  # defmodule Json_Decoder do
  #   @spec decode_response(response :: %HTTPoison.Response{}) :: {:ok, map()} | {:error, any}
  #   def decode_response(response) do
  #     case Jason.decode(response.body) do
  #       {:ok, json} -> {:ok, json}
  #       {:error, _reason} -> {:error, "Failed to decode JSON"}
  #     end
  #   end
  # end

end
