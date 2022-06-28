defmodule QClient do
  @moduledoc """
  Documentation for `QClient`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> QClient.hello()
      :world

  """
  def hello do
    IO.inspect(QServer.hello())
    :world
  end

  @sql_rel_dir "apps/qclient/lib/sql/"

  def read(file) do
    (@sql_rel_dir <> file)
    |> Path.expand()
    |> File.read()
  end

  def run(sql_file, opts \\ []) do
    with {:ok, sql} <- read(sql_file) do
      IO.inspect(sql)
      run_stmt(sql, opts)
    end
  end

  def run_stmt(sql, opts \\ []) do
    QServer.exec(sql, opts)
  end
end
