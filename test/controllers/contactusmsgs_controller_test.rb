require 'test_helper'

class ContactusmsgsControllerTest < ActionController::TestCase
  setup do
    @contactusmsg = contactusmsgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactusmsgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contactusmsg" do
    assert_difference('Contactusmsg.count') do
      post :create, contactusmsg: { email: @contactusmsg.email, first_name: @contactusmsg.first_name, last_name: @contactusmsg.last_name, phone_number: @contactusmsg.phone_number, user_id: @contactusmsg.user_id }
    end

    assert_redirected_to contactusmsg_path(assigns(:contactusmsg))
  end

  test "should show contactusmsg" do
    get :show, id: @contactusmsg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contactusmsg
    assert_response :success
  end

  test "should update contactusmsg" do
    patch :update, id: @contactusmsg, contactusmsg: { email: @contactusmsg.email, first_name: @contactusmsg.first_name, last_name: @contactusmsg.last_name, phone_number: @contactusmsg.phone_number, user_id: @contactusmsg.user_id }
    assert_redirected_to contactusmsg_path(assigns(:contactusmsg))
  end

  test "should destroy contactusmsg" do
    assert_difference('Contactusmsg.count', -1) do
      delete :destroy, id: @contactusmsg
    end

    assert_redirected_to contactusmsgs_path
  end
end
