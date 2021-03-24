defmodule ListFilteringChallengeTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the size of the odd number list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      response = ListFilteringChallenge.call(list)
      expected = 3
      assert response == expected
    end

    test "return zero when the list has no odd number" do
      list = ["uva", "10", "6", "4", "banana", "6", "abc"]
      response = ListFilteringChallenge.call(list)
      expected = 0
      assert response == expected
    end
  end
end
