defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) when nucleotide in @nucleotides do
    validate!(strand)
    strand
      |> Enum.reduce(%{}, fn(x, acc) ->
          Map.update(acc, x, 1, &(&1 + 1))
        end)
      |> Map.get(nucleotide, 0)
  end
  def count(_, _), do: raise ArgumentError


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    validate!(strand)

    initial_map = %{ ?A => 0, ?T => 0, ?C => 0, ?G => 0}
    strand
      |> Enum.reduce(initial_map, fn(x, acc) ->
          Map.update(acc, x, 1, &(&1 + 1))
        end)
  end

  def validate!(strand) do
    unless Enum.all?(strand, &(Enum.member?(@nucleotides, &1))), do: raise ArgumentError
  end
end
