defmodule Collectionss do

  def ex1(lista) do
    Enum.each(lista, fn num ->
      IO.puts(num)
    end)
  end

  def ex2(lista) do
    Enum.map(lista, fn x -> x * 2 end)
  end

  def ex3(map) do
    Enum.filter(map, fn {_chave, valor} -> valor >= 18 end)
    |> Enum.into(%{})
  end

end
