defmodule QServer do
  @moduledoc """
  Documentation for `QServer`.
  """

  require Logger

  @doc """
  Hello world.

  ## Examples

      iex> QServer.hello()
      :world

  """
  def hello do
    :world
  end

  def exec(statement, opts \\ []) do
    try do
      try_query(statement, opts)
    rescue
      e ->
        Logger.error(Exception.format(:error, e, __STACKTRACE__))
        {:error, Exception.message(e)}
    end
  end

  defp try_query(statement, opts) do
    case Ecto.Adapters.SQL.query(QServer.Repo, statement, opts) do
      {:ok, %Postgrex.Result{} = result} ->
        {:ok, Map.take(result, [:columns, :num_rows, :rows])}

      {:error, %Postgrex.Error{} = error} ->
        Logger.error(error)
        {:error, error.postgres.message}
    end
  end
end
