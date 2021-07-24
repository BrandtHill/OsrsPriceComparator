defmodule OsrsPriceComparator.OsrsApi do

  @headers [{"User-Agent", "HTTPoison - OsrsPriceComparator - Fyrebrand"}]

  def get_latest_prices do
    HTTPoison.get!("https://prices.runescape.wiki/api/v1/osrs/latest", @headers)
    |> Map.get(:body)
    |> Jason.decode!()
    |> Map.get("data")
  end

  def get_prices_for_id(json, id) do
    id = Integer.to_string(id)
    item = json[id]
    {item["high"], item["low"]}
  end

  def sum_set(json, set, cost \\ 0) do
    prices = Enum.map(set, fn item ->
      case item do
        {id, num} ->
          {h, l} = get_prices_for_id(json, id)
          {h * num, l * num}

        id when is_integer(id) ->
          get_prices_for_id(json, id)
      end
    end)
    Enum.reduce(prices, {cost, cost}, fn {h, l}, {ah, al} -> {ah + h, al + l} end)
  end

  def do_comparisons do
    sets = Application.get_env(:osrs_price_comparator, :compare_sets)
    json = get_latest_prices()
    Enum.map(sets, fn {name, result, ingredients, cost} ->
      {result_high, result_low} = sum_set(json, result)
      {ingredients_high, ingredients_low} = sum_set(json, ingredients, cost)

      %{
        name: name,
        resultHigh: result_high,
        resultLow: result_low,
        ingredientsHigh: ingredients_high,
        ingredientsLow: ingredients_low,
        maxProfit: result_high - ingredients_low
      }
    end)
  end

end
