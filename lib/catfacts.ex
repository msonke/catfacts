defmodule Catfacts do
  @moduledoc """
  Documentation for `Catfacts`.
  """

@doc """
  Makes a simple API call to cat-fact.herokuapp.com/facts.

  ## Examples

      iex> Catfacts.api_call()


  """
@response HTTPoison.get("https://cat-fact.herokuapp.com/facts")

def response do
  IO.inspect @response
end
end
