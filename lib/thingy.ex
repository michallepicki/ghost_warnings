defmodule Thingy do
  use Phoenix.Component

  embed_templates "templates/*"

  def function_component(assigns) do
    ~H"""
    <div data-warning-shown-every-time={GhostWarnings.color(@user) == :red}></div>
    """
  end
end