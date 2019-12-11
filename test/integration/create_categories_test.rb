require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  test "get category form and create a new category" do
    get new_category_path
    assert_template 'categories/new'
    assert_difference 'Category.count', 1 do
      post categories_path, params: { category: { name: 'sports' } } 
      follow_redirect!
    end
    assert_template 'categories/index'
    assert_match 'sports', response.body
  end

end