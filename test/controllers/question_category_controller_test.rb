require 'test_helper'

class QuestionCategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get questioncategory" do
    get question_category_questioncategory_url
    assert_response :success
  end

end
