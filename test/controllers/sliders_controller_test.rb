require 'test_helper'

class SlidersControllerTest < ActionController::TestCase
  setup do
    @slider = sliders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sliders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider" do
    assert_difference('Slider.count') do
      post :create, slider: { description: @slider.description, image: @slider.image, title: @slider.title, visible: @slider.visible, weight: @slider.weight }
    end

    assert_redirected_to slider_path(assigns(:slider))
  end

  test "should show slider" do
    get :show, id: @slider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider
    assert_response :success
  end

  test "should update slider" do
    patch :update, id: @slider, slider: { description: @slider.description, image: @slider.image, title: @slider.title, visible: @slider.visible, weight: @slider.weight }
    assert_redirected_to slider_path(assigns(:slider))
  end

  test "should destroy slider" do
    assert_difference('Slider.count', -1) do
      delete :destroy, id: @slider
    end

    assert_redirected_to sliders_path
  end
end
