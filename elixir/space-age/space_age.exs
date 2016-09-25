defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :neptune | :uranus

  @earth_orbital_seconds 31557600
  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    seconds / (planet_ratios[planet] * @earth_orbital_seconds)
  end

  defp planet_ratios do
    %{
      :mercury => 0.2408467,
      :venus => 0.61519726,
      :earth => 1,
      :mars => 1.8808158,
      :jupiter => 11.862615,
      :saturn => 29.447498,
      :neptune => 164.79132,
      :uranus => 84.016846
    }
  end
end
