require 'test_helper'

class ArmorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get armors_index_url
    assert_response :success
  end

  test "should get create" do
    get armors_create_url
    assert_response :success
  end

  test "should get new" do
    get armors_new_url
    assert_response :success
  end

  test "should get show" do
    get armors_show_url
    assert_response :success
  end

  test "should get edit" do
    get armors_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get armors_destroy_url
    assert_response :success
  end

end
