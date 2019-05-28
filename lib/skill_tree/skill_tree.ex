defmodule SkillTree do
  @derive {Poison.Decoder, only: [:characterData, :imageRoot]}
  defstruct [:characterData, :imageRoot]
end
