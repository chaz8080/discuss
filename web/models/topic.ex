defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
    belongs_to :user, Discuss.User
    has_many :comments, Discuss.Comment
  end

  @doc """
  `struct` represents a record in the database

  `params` contains the properties we want to update the `struct` with

  `params \\ %{}` defaults to empty map if params is nil
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
