require 'test_helper'

class ModificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get modifications_new_url
    assert_response :success
  end

  test "should get edit" do
    get modifications_edit_url
    assert_response :success
  end

  test "should get show" do
    get modifications_show_url
    assert_response :success
  end

end
