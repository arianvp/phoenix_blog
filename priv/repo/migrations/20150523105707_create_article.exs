defmodule Blog.Repo.Migrations.CreateArticle do
  use Ecto.Migration

  def change do
    create table(:articles) do
      add :title, :string
      add :user_id, :integer

      timestamps
    end
    create index(:articles, [:user_id])

  end
end
