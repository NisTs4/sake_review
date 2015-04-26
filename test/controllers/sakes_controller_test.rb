require 'test_helper'

class SakesControllerTest < ActionController::TestCase
  setup do
    @sake = sakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sake" do
    assert_difference('Sake.count') do
      post :create, sake: { description: @sake.description, maker: @sake.maker, name: @sake.name, rating: @sake.rating, size: @sake.size }
    end

    assert_redirected_to sake_path(assigns(:sake))
  end

  test "should show sake" do
    get :show, id: @sake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sake
    assert_response :success
  end

  test "should update sake" do
    patch :update, id: @sake, sake: { description: @sake.description, maker: @sake.maker, name: @sake.name, rating: @sake.rating, size: @sake.size }
    assert_redirected_to sake_path(assigns(:sake))
  end

  test "should destroy sake" do
    assert_difference('Sake.count', -1) do
      delete :destroy, id: @sake
    end

    assert_redirected_to sakes_path
  end
end
