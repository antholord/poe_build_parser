defmodule PoeBuildParser do
  import PoeBuildParser.SkillTree.SkillTreeImporter
  import LeagueScraper

  @moduledoc """
  Documentation for PoeBuildParser.
  """

  def run do
    getPlayerProfiles("synthesis", 1)
    |> IO.puts()

    # skillTree = importSkillTree()
  end
end

PoeBuildParser.run()
