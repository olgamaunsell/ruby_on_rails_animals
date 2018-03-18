require 'test_helper'

class AnimalTest < ActiveSupport::TestCase

  test "Animals have a name" do
    assert_equal("Tiger", animals(:one).name)
  end

  test "Animals have a number of legs value - Tiger" do
    assert_equal(4, animals(:one).legs)
  end

  test "Animals have a number of legs value - Snake" do
    assert_equal(0, animals(:two).legs)
  end

  test "Animals with legs walk" do
    assert animals(:one).move == "walk"
  end

  test "Animals with no legs can slither" do
    assert animals(:two).move == "slither"
  end

end
