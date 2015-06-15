defmodule Blog.Article do
  use Blog.Web, :model

  schema "articles" do
    field :title, :string
    belongs_to :user, Blog.User
    field :content, :string

    timestamps
  end

  @required_fields ~w(title user_id content)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
