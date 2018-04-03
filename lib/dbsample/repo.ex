defmodule Dbsample.Repo do
  use Ecto.Repo, otp_app: :dbsample

  def get_users() do
    query!("SELECT name FROM users", []) |> into_map()
  end

  def get_user(user_id) when is_integer(user_id) do
    query!("SELECT name FROM users WHERE id = ?", [user_id]) |> into_map()
  end

  defp into_map(res) do
    Enum.map(res.rows, fn row ->
      Enum.zip(res.columns, row) |> Enum.into(%{})
    end)
  end
end
