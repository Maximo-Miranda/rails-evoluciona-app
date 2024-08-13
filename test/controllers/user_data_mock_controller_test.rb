require "test_helper"

class UserDataMockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_data_mock_index_url
    assert_response :success
  end
end
