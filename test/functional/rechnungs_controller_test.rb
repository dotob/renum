require 'test_helper'

class RechnungsControllerTest < ActionController::TestCase
  setup do
    @rechnung = rechnungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rechnungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rechnung" do
    assert_difference('Rechnung.count') do
      post :create, rechnung: @rechnung.attributes
    end

    assert_redirected_to rechnung_path(assigns(:rechnung))
  end

  test "should show rechnung" do
    get :show, id: @rechnung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rechnung
    assert_response :success
  end

  test "should update rechnung" do
    put :update, id: @rechnung, rechnung: @rechnung.attributes
    assert_redirected_to rechnung_path(assigns(:rechnung))
  end

  test "should destroy rechnung" do
    assert_difference('Rechnung.count', -1) do
      delete :destroy, id: @rechnung
    end

    assert_redirected_to rechnungs_path
  end
end
