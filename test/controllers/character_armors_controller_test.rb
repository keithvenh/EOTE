require 'test_helper'

class CharmsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get charms_new_url
    assert_response :success
  end

  test "should get show" do
    get charms_show_url
    assert_response :success
  end

  test "should get edit" do
    get charms_edit_url
    assert_response :success
  end

end
