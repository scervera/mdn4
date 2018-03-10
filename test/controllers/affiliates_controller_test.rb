require 'test_helper'

class AffiliatesControllerTest < ActionController::TestCase
  setup do
    @affiliate = affiliates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affiliates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affiliate" do
    assert_difference('Affiliate.count') do
      post :create, affiliate: { address1: @affiliate.address1, address2: @affiliate.address2, city: @affiliate.city, denomination: @affiliate.denomination, name: @affiliate.name, pastor: @affiliate.pastor, state: @affiliate.state, zipcode: @affiliate.zipcode }
    end

    assert_redirected_to affiliate_path(assigns(:affiliate))
  end

  test "should show affiliate" do
    get :show, id: @affiliate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @affiliate
    assert_response :success
  end

  test "should update affiliate" do
    patch :update, id: @affiliate, affiliate: { address1: @affiliate.address1, address2: @affiliate.address2, city: @affiliate.city, denomination: @affiliate.denomination, name: @affiliate.name, pastor: @affiliate.pastor, state: @affiliate.state, zipcode: @affiliate.zipcode }
    assert_redirected_to affiliate_path(assigns(:affiliate))
  end

  test "should destroy affiliate" do
    assert_difference('Affiliate.count', -1) do
      delete :destroy, id: @affiliate
    end

    assert_redirected_to affiliates_path
  end
end
