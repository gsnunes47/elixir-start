defmodule User do
  @enforce_keys [:name]
  defstruct [:name, :age]

  def check(%User{} = user) do
    "Hello " <> user.name <> " you are " <> Integer.to_string(user.age) <> " years old!"
  end
end
    