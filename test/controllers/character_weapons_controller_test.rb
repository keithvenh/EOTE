require 'test_helper'

class CharacterWeaponsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get character_weapons_new_url
    assert_response :success
  end

  test "should get show" do
    get character_weapons_show_url
    assert_response :success
  end

  test "should get edit" do
    get character_weapons_edit_url
    assert_response :success
  end

end
