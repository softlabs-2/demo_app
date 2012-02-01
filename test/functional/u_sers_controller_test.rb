require 'test_helper'

class USersControllerTest < ActionController::TestCase
  setup do
    @u_ser = u_sers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:u_sers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create u_ser" do
    assert_difference('USer.count') do
      post :create, :u_ser => @u_ser.attributes
    end

    assert_redirected_to u_ser_path(assigns(:u_ser))
  end

  test "should show u_ser" do
    get :show, :id => @u_ser
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @u_ser
    assert_response :success
  end

  test "should update u_ser" do
    put :update, :id => @u_ser, :u_ser => @u_ser.attributes
    assert_redirected_to u_ser_path(assigns(:u_ser))
  end

  test "should destroy u_ser" do
    assert_difference('USer.count', -1) do
      delete :destroy, :id => @u_ser
    end

    assert_redirected_to u_sers_path
  end
end
