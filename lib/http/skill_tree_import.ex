defmodule PoeBuildParser.Http.SkillTreeImporter do
  import PoeBuildParser.Http.HttpService
  @spec importSkillTree() :: any()
  def importSkillTree do
    get("https://s3.us-east-2.amazonaws.com/poebuilds/skilltree.json")
    # add marshalling here
  end
end
