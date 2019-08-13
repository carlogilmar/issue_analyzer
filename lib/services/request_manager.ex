defmodule Analyzer.RequestManager do

  def get(url, headers) do
    response = HTTPoison.get!(url, headers)
    {:ok, response_body} = Poison.decode(response.body)
    response_body
  end

end
