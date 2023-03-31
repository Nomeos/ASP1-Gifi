require "test_helper"

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get myGrades" do
    get grades_myGrades_url
    assert_response :success
  end
end
