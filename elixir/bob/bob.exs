defmodule Bob do
  def is_uppercase?(string) do
    String.upcase(string) == string
  end

  def contains_letters?(string) do
    Regex.match?(~r/[a-z|A-Z]/, string)
  end

  def hey(input) do
    cond do
        (String.strip(input) |> String.length) < 1 -> "Fine. Be that way!"
        String.ends_with?(input, "?") -> "Sure."
        contains_letters?(input) && is_uppercase?(input) -> "Whoa, chill out!"
        true -> "Whatever."
    end
  end
end
