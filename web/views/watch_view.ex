defmodule Rumbl.WatchView do
  use Rumbl.Web, :view

  @doc "Extract video id from youtube url."
  def player_id(video) do
    ~r{^.*(?:youtu\.be/|\w+/|v=)(?<id>[^#&?]*)}
    |> Regex.named_captures(video.url)
    |> get_in(["id"])
  end
end
