require 'test_helper'

class CharacterModificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get character_modifications_new_url
    assert_response :success
  end

  test "should get show" do
    get character_modifications_show_url
    assert_response :success
  end

  test "should get edit" do
    get character_modifications_edit_url
    assert_response :success
  end

end
