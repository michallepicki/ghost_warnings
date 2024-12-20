defmodule GhostWarnings do
  def color(user) do
    case user do
      :martha -> :blue
      _ -> :yellow
    end
  end
end
