defmodule Analyzer do

  def start(url, token) do
    get_issues(url, token) |> Analyzer.IssueTracker.list()
  end

  def get_issues(url, token) do
    headers = [{:"Authorization", "token #{token}"}]
    Analyzer.RequestManager.get(url, headers)
  end

end
