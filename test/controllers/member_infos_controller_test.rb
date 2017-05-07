require 'test_helper'

class MemberInfosControllerTest < ActionController::TestCase
  setup do
    @member_info = member_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_info" do
    assert_difference('MemberInfo.count') do
      post :create, member_info: { address: @member_info.address, age: @member_info.age, email: @member_info.email, first_name: @member_info.first_name, gender: @member_info.gender, last_name: @member_info.last_name, latitude: @member_info.latitude, longitude: @member_info.longitude, phone_number: @member_info.phone_number }
    end

    assert_redirected_to member_info_path(assigns(:member_info))
  end

  test "should show member_info" do
    get :show, id: @member_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_info
    assert_response :success
  end

  test "should update member_info" do
    patch :update, id: @member_info, member_info: { address: @member_info.address, age: @member_info.age, email: @member_info.email, first_name: @member_info.first_name, gender: @member_info.gender, last_name: @member_info.last_name, latitude: @member_info.latitude, longitude: @member_info.longitude, phone_number: @member_info.phone_number }
    assert_redirected_to member_info_path(assigns(:member_info))
  end

  test "should destroy member_info" do
    assert_difference('MemberInfo.count', -1) do
      delete :destroy, id: @member_info
    end

    assert_redirected_to member_infos_path
  end
end
