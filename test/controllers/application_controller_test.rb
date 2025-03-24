require "test_helper"

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "up" do
    get "/up"
    assert_response 200
  end
end
