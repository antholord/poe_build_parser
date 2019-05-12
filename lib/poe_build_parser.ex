defmodule PoeBuildParser do
  import PoeBuildParser.Http.SkillTreeImporter

  @moduledoc """
  Documentation for PoeBuildParser.
  """

  def run do
    importSkillTree()
  end
end

PoeBuildParser.run()
