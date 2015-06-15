defmodule Blog.ArticleView do
  use Blog.Web, :view


  def render("title.html", assigns) do
    assigns.article.title
  end
end
