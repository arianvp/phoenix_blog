defmodule Blog.ArticlesView do
  use Blog.Web, :view


  def render("title.html", assigns) do
    "Articles"
  end

  def render("index.html", assigns) do
    Blog.ArticleView.render("index.html",assigns)
  end

end
