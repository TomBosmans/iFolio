require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "should have the necessary required validators" do
    article = Article.new
    assert_not article.valid?
    assert_equal [:name], article.errors.keys
  end
end
