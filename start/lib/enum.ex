defmodule Enume do

  # Escreva uma função que receba uma lista e imprima todos os elementos no terminal.
  def ex1(lista) do
    Enum.each(lista, fn num ->
      IO.puts(num)
    end)
  end

  # Escreva uma função que receba uma lista de números e retorne uma nova lista com todos os valores dobrados.
  def ex2(lista) do
    Enum.map(lista, fn num -> num * 2 end)
  end

  # Receba uma lista de nomes e retorne uma nova lista com "Sr./Sra." antes de cada nome.
  # Exemplo: ["João", "Maria"] => ["Sr. João", "Sr. Maria"]
  def ex3(lista) do
    Enum.map(lista, fn name -> "Sr./Sra. " <> name end)
  end

  # Receba uma lista de nomes e retorne uma nova lista com "Sr./Sra." antes de cada nome.
  # Exemplo: ["João", "Maria"] => ["Sr. João", "Sr. Maria"]
  # Mas que identifique o sexo e coloque o pronome certo de acordo com a ultima letra do n ome
  def ex33(lista) do
    Enum.map(lista, fn name ->
      ultima_letra = String.last(name)

      case ultima_letra do

        "a" -> "Sra. " <> name

        "o" -> "Sr. " <> name

      end

    end)
  end

  # Dado um map %{ "João" => 15, "Maria" => 22 }, retorne apenas os que têm 18 ou mais anos.

  def ex4(omap) do
    Enum.filter(omap, fn {_chave, valor} -> valor >= 18 end)
    # |> Enum.into(%{})
  end

  # Receba uma lista de números e retorne somente os pares.
  def ex5(lista) do
    Enum.filter(lista, fn x -> rem(x, 2) == 0 end)
  end

  # Dado ["Ana", "Carlos", "Jo"], verifique se todos os nomes têm mais de 3 letras.
  def ex6(lista) do
    Enum.filter(lista, fn nome -> String.length(nome) >= 3 end)
  end

  # Receba uma lista de números e diga se existe algum número menor que 0.
  def ex7(lista) do
    Enum.each(lista, fn num ->

      cond do

        num > 0 -> IO.puts("#{num} é maior do que zero.")

        num < 0 -> IO.puts("#{num} é menor do que zero.")

        num = 0 -> IO.puts("#{num} é zero.")

      end

    end)
  end

  # Receba uma lista de números e retorne a soma de todos os valores.
  def ex8(lista) do
    Enum.reduce(lista, 0, fn x, acc -> x + acc end)
  end

  # Dado ["Olá", "mundo", "!"], use reduce para juntar tudo numa string "Olá mundo!".
  def ex9(lista) do
    Enum.reduce(lista, "", fn x, acc ->
       acc <> " " <> x
      end)
  end

  # Dado ["Ana", "André", "Beatriz", "Bruno"], conte quantos nomes começam com "A".
  def ex10(lista, letra) do
    Enum.reduce(lista, 0, fn nome, acc ->

      primeira_letra = String.first(nome)

      cond do

        primeira_letra == letra -> acc + 1
        true -> acc

      end

    end)
  end

  # Receba uma lista de números e retorne ela ordenada.
  def ex11(lista) do
    Enum.sort(lista)
  end

  # Dado [1,2,2,3,3,3,4], retorne [1,2,3,4]
  def ex12(lista) do
    Enum.uniq(lista)
  end

  # Dado [%{id: 1, nome: "A"}, %{id: 2, nome: "B"}, %{id: 3, nome: "A"}],
  # retorne apenas um de cada nome.
  def ex13(omap) do 
    Enum.uniq_by(omap, fn pessoa -> pessoa.nome end)
  end

  # Dado uma lista de maps como [%{nome: "João", idade: 20}, %{nome: "Maria", idade: 17}],
  # filtre os maiores de idade, ordene por idade DESC e retorne só os nomes.
  # Resultado esperado: ["João"]
  def ex14(lista) do
    Enum.filter(lista, fn pessoa ->
      pessoa.idade >= 18
    end)
    |> Enum.sort(fn a, b -> a.idade > b.idade end)
    |> Enum.map(fn pessoa -> pessoa.nome end)
  end

end
