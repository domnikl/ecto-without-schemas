defmodule Dbsample do
  alias Dbsample.Repo

  @moduledoc """
  Documentation for Dbsample.
  """

  @doc """
  Greats all the great guys.

  ## Examples

      iex> Dbsample.hello
      Hello, Dominik
      Hello Mike

  """
  def hello do
    Repo.get_users()
    |> Enum.map(fn %{"name" => name} -> "Hello, #{name}" end)
    |> Enum.each(&IO.puts(&1))
  end
end
