require 'test_helper'

class CharacterEquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get character_equipments_new_url
    assert_response :success
  end

  test "should get show" do
    get character_equipments_show_url
    assert_response :success
  end

  test "should get edit" do
    get character_equipments_edit_url
    assert_response :success
  end

end
