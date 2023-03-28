require "test_helper"

class LecturesControllerTest < ActionDispatch::IntegrationTest
  test "should get myLectures" do
    get lectures_myLectures_url
    assert_response :success
  end
end
