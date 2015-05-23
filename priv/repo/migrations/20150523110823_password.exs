defmodule Blog.Repo.Migrations.Password do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :password, :text
    end
  end
end
