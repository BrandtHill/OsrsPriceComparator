defmodule OsrsPriceComparator.Endpoint do
  import Plug.Conn
  alias OsrsPriceComparator.OsrsApi

  def init(options), do: options

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("application/json")
    |> put_resp_header("Access-Control-Allow-Origin", "*")
    |> send_resp(200, OsrsApi.do_comparisons |> Jason.encode!)
  end
end
