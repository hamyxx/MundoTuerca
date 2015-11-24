require 'test_helper'

class RecomsControllerTest < ActionController::TestCase
  setup do
    @recom = recoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recom" do
    assert_difference('Recom.count') do
      post :create, recom: { catereco_id: @recom.catereco_id, recomendacion_id: @recom.recomendacion_id }
    end

    assert_redirected_to recom_path(assigns(:recom))
  end

  test "should show recom" do
    get :show, id: @recom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recom
    assert_response :success
  end

  test "should update recom" do
    patch :update, id: @recom, recom: { catereco_id: @recom.catereco_id, recomendacion_id: @recom.recomendacion_id }
    assert_redirected_to recom_path(assigns(:recom))
  end

  test "should destroy recom" do
    assert_difference('Recom.count', -1) do
      delete :destroy, id: @recom
    end

    assert_redirected_to recoms_path
  end
end
