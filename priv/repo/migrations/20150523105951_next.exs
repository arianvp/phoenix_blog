defmodule Blog.Repo.Migrations.Next do
  use Ecto.Migration

  def change do
    alter table(:articles) do
      add :content, :text
    end
  end
end
