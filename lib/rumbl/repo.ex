defmodule Rumbl.Repo do
  @moduledoc """
  In memory repository.
  """

  #use Ecto.Repo, otp_app: :rumbl

  def all(Rumbl.User) do
    [
      %Rumbl.User{id: "1", name: "Testy T Testerton", username: "user1", password: "password098!"},
      %Rumbl.User{id: "2", name: "Testina T Testerton", username: "user2", password: "password123!"},
      %Rumbl.User{id: "3", name: "First M Last", username: "user3", password: "password456!"}
    ]
  end

  def all(_module), do: []

  def get(module, id) do
    module
    |> all()
    |> Enum.find(fn map -> map.id == id end)
  end

  def get_by(module, params) do
    module
    |> all()
    |> Enum.find(fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
