defmodule PoeBuildParser.HttpService do
  def get(url) do
    HTTPoison.start()

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Not found :(")

      {:ok, %HTTPoison.Response{status_code: 429}} ->
        Process.sleep(:timer.minutes(2))
        get(url)

      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect(reason)
    end
  end
end
