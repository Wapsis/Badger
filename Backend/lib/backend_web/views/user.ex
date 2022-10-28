defmodule ApiWeb.UserView do
  use ApiWeb, :view

  def render("index.json", %{string: string}) do
    %{message: string}
  end

end