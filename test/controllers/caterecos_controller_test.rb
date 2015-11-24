require 'test_helper'

class CaterecosControllerTest < ActionController::TestCase
  setup do
    @catereco = caterecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catereco" do
    assert_difference('Catereco.count') do
      post :create, catereco: { tipo: @catereco.tipo }
    end

    assert_redirected_to catereco_path(assigns(:catereco))
  end

  test "should show catereco" do
    get :show, id: @catereco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catereco
    assert_response :success
  end

  test "should update catereco" do
    patch :update, id: @catereco, catereco: { tipo: @catereco.tipo }
    assert_redirected_to catereco_path(assigns(:catereco))
  end

  test "should destroy catereco" do
    assert_difference('Catereco.count', -1) do
      delete :destroy, id: @catereco
    end

    assert_redirected_to caterecos_path
  end
end
