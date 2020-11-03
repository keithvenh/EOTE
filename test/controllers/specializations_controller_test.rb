require 'test_helper'

class SpecializationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get specializations_index_url
    assert_response :success
  end

  test "should get create" do
    get specializations_create_url
    assert_response :success
  end

  test "should get new" do
    get specializations_new_url
    assert_response :success
  end

  test "should get show" do
    get specializations_show_url
    assert_response :success
  end

  test "should get edit" do
    get specializations_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get specializations_destroy_url
    assert_response :success
  end

end
