defmodule ListFilteringChallenge do

  def call(list), do: list_filter(list)

  defp list_filter(list) do
    list
    |> Enum.flat_map(&get_numbers/1)
    |> Enum.filter(&(rem(&1, 2) == 1))
    |> length()
  end

  defp get_numbers(value) do
    case Integer.parse(value) do
      {value, _rest} -> [value]
      :error -> []
    end
  end
end
