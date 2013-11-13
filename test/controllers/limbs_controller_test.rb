require 'test_helper'

class LimbsControllerTest < ActionController::TestCase
  setup do
    @limb = limbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:limbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create limb" do
    assert_difference('Limb.count') do
      post :create, limb: {  }
    end

    assert_redirected_to limb_path(assigns(:limb))
  end

  test "should show limb" do
    get :show, id: @limb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @limb
    assert_response :success
  end

  test "should update limb" do
    patch :update, id: @limb, limb: {  }
    assert_redirected_to limb_path(assigns(:limb))
  end

  test "should destroy limb" do
    assert_difference('Limb.count', -1) do
      delete :destroy, id: @limb
    end

    assert_redirected_to limbs_path
  end
end
