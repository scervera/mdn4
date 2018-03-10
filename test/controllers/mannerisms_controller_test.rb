require 'test_helper'

class MannerismsControllerTest < ActionController::TestCase
  setup do
    @mannerism = mannerisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mannerisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mannerism" do
    assert_difference('Mannerism.count') do
      post :create, mannerism: { author: @mannerism.author, priority: @mannerism.priority, quote: @mannerism.quote }
    end

    assert_redirected_to mannerism_path(assigns(:mannerism))
  end

  test "should show mannerism" do
    get :show, id: @mannerism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mannerism
    assert_response :success
  end

  test "should update mannerism" do
    patch :update, id: @mannerism, mannerism: { author: @mannerism.author, priority: @mannerism.priority, quote: @mannerism.quote }
    assert_redirected_to mannerism_path(assigns(:mannerism))
  end

  test "should destroy mannerism" do
    assert_difference('Mannerism.count', -1) do
      delete :destroy, id: @mannerism
    end

    assert_redirected_to mannerisms_path
  end
end
