defmodule Analyzer.IssueTracker do

  def list(issues_from_github) do
    issues_from_github
    |> Enum.each(fn issue ->
      labels = get_labels(issue["labels"])
      IO.puts "Issue #{issue["number"]} | Status [#{issue["state"]}] | #{labels}"
    end)
  end

  def get_labels(labels) do
    labels = for label <- labels, do: "[#{label["name"]}]"
    Enum.join(labels, " ")
  end

end
