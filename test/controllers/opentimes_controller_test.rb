require 'test_helper'

class OpentimesControllerTest < ActionController::TestCase
  setup do
    @opentime = opentimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opentimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opentime" do
    assert_difference('Opentime.count') do
      post :create, opentime: { close: @opentime.close, isClosed: @opentime.isClosed, open: @opentime.open, title: @opentime.title }
    end

    assert_redirected_to opentime_path(assigns(:opentime))
  end

  test "should show opentime" do
    get :show, id: @opentime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opentime
    assert_response :success
  end

  test "should update opentime" do
    patch :update, id: @opentime, opentime: { close: @opentime.close, isClosed: @opentime.isClosed, open: @opentime.open, title: @opentime.title }
    assert_redirected_to opentime_path(assigns(:opentime))
  end

  test "should destroy opentime" do
    assert_difference('Opentime.count', -1) do
      delete :destroy, id: @opentime
    end

    assert_redirected_to opentimes_path
  end
end
