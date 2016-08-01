require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "should have the necessary required validators" do
    category = Category.new
    assert_not category.valid?
    assert_equal [:name], category.errors.keys
  end
end
