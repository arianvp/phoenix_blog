defmodule Blog.ArticleTest do
  use Blog.ModelCase

  alias Blog.Article

  @valid_attrs %{title: "some content", user: nil}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Article.changeset(%Article{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Article.changeset(%Article{}, @invalid_attrs)
    refute changeset.valid?
  end
end
