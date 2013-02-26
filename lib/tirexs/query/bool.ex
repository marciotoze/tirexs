defmodule Tirexs.Query.Bool do

  import Tirexs.Query.Helpers
  import Tirexs.Query
  import Tirexs.Helpers

  defmacro __using__(_) do
      quote do
        import unquote(Tirexs.Query.Bool)
      end
    end

  def bool(block) do
    [bool: scoped_query(block)]
  end

  def must(block) do
    [must: to_array(scoped_query(block))]
  end

  def should(block) do
    [should: to_array(scoped_query(block))]
  end

  def must_not(block) do
    [must_not: to_array(scoped_query(block))]
  end

end