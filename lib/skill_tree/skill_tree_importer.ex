defmodule PoeBuildParser.SkillTree.SkillTreeImporter do
  import PoeBuildParser.HttpService
  @spec importSkillTree() :: any()
  def importSkillTree do
    json = get("https://s3.us-east-2.amazonaws.com/poebuilds/skilltree.json")

    case Poison.decode(json) do
      {:ok, test} -> test
    end

    # add marshalling here
  end
end
