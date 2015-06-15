defmodule Blog.ArticleView do
  use Blog.Web, :view

  def render("title.index.html", assigns) do
      "Articles"
  end

  def render("title.new.html", assigns) do
    "New article"
  end

  def render("title.edit.html", assigns) do
    "Editing "<> assigns.article.title
  end

  def render("title.show.html", assigns) do
    assigns.article.title
  end


end
