defmodule LeagueScraper do
  import PoeBuildParser.HttpService

  def getPlayerProfiles(league, count) do
    ladder = getPlayerProfiles(league, 1, 1) |> Poison.decode!()
    ladder["ladder"]["entries"]
  end

  # league = getLeague(league)
  def getLeague(league) do
    get("http://api.pathofexile.com/leagues/#{league}?ladder=0&ladderOffset=0&ladderLimit=1")
  end

  defp getPlayerProfiles(league, startIndex, scrapeCount) when scrapeCount >= 200 do
    get(
      "http://api.pathofexile.com/leagues/#{league}?ladder=1&ladderOffset=#{startIndex}&ladderLimit=#{
        200
      }"
    )
  end

  defp getPlayerProfiles(league, startIndex, scrapeCount) when scrapeCount < 200 do
    get(
      "http://api.pathofexile.com/leagues/#{league}?ladder=1&ladderOffset=#{startIndex}&ladderLimit=#{
        scrapeCount
      }"
    )
  end
end
