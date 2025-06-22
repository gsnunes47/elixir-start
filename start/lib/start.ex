defmodule Start do
  def hello(test) when is_binary(test) do
    "hello " <> test
  end

  def hello(_test) do
    "i need a string!"
  end

end
