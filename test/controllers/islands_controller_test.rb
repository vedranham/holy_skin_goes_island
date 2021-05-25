require 'test_helper'

class IslandsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get islands_index_url
    assert_response :success
  end

end
