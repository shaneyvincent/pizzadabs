require 'test_helper'

class PeicesControllerTest < ActionController::TestCase
  setup do
    @peice = peices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peice" do
    assert_difference('Peice.count') do
      post :create, peice: { category: @peice.category, description: @peice.description, image_url: @peice.image_url, price: @peice.price, subcategory: @peice.subcategory, title: @peice.title }
    end

    assert_redirected_to peice_path(assigns(:peice))
  end

  test "should show peice" do
    get :show, id: @peice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peice
    assert_response :success
  end

  test "should update peice" do
    patch :update, id: @peice, peice: { category: @peice.category, description: @peice.description, image_url: @peice.image_url, price: @peice.price, subcategory: @peice.subcategory, title: @peice.title }
    assert_redirected_to peice_path(assigns(:peice))
  end

  test "should destroy peice" do
    assert_difference('Peice.count', -1) do
      delete :destroy, id: @peice
    end

    assert_redirected_to peices_path
  end
end
