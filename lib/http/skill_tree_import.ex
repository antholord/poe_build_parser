defmodule PoeBuildParser.Http.SkillTreeImporter do
  def importSkillTree do
    url = "https://s3.us-east-2.amazonaws.com/poebuilds/skilltree.json"
    HTTPoison.start()

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts(body)

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
