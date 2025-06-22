defmodule Test do

  def nome_fala(map) do
    IO.puts("#{map.nome}: '#{map.fala}'")
    map
  end

  def main() do
    %{nome: "tim", fala: "Te amaaar"}
    |> nome_fala()
    |> Map.put(:nome, "parceiro")
    |> Map.put(:fala, "Pensa que não vai se possível!")
    |> nome_fala()
    |> Map.put(:nome, "tim")
    |> Map.put(:fala, "Te conquistaaar")
    |> nome_fala()
    |> Map.put(:nome, "parceiro")
    |> Map.put(:fala, "Pensa que não vai se possível!")
    |> nome_fala()
  end

end
