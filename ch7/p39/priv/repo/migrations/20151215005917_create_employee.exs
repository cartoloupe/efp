defmodule P39.Repo.Migrations.CreateEmployee do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :first_name, :string
      add :last_name, :string
      add :position, :string
      add :separation, :date

      timestamps
    end

  end
end
