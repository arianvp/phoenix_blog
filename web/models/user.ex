defmodule Blog.User do
  use Blog.Web, :model

  require Logger

  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string

    timestamps
  end

  @required_fields ~w(email name password)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model |> inspect |> Logger.debug
    model
    |> cast(params, @required_fields, @optional_fields)
    # hash the password before inserting
    |> update_change(:password, &Comeonin.Bcrypt.hashpwsalt/1)
  end




end
