defmodule Bob do
  def is_uppercase?(string) do
    String.upcase(string) == string && String.downcase(string) != string
  end

  def hey(input) do
    cond do
        String.trim(input) == ""
          -> "Fine. Be that way!"
        String.ends_with?(input, "?")
          -> "Sure."
        is_uppercase?(input) ->
          "Whoa, chill out!"
        true ->
          "Whatever."
    end
  end
end
