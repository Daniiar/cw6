require 'test_helper'

class PhotographiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photographies_new_url
    assert_response :success
  end

  test "should get create" do
    get photographies_create_url
    assert_response :success
  end

end
