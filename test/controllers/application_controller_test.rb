require "test_helper"

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "up" do
    get "/up"
    assert_response 200
  end

  test "this will fail" do
    refute true
  end
end
