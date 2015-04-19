require 'test_helper'

class MbracketsControllerTest < ActionController::TestCase
  setup do
    @mbracket = mbrackets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mbrackets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mbracket" do
    assert_difference('Mbracket.count') do
      post :create, mbracket: { name: @mbracket.name }
    end

    assert_redirected_to mbracket_path(assigns(:mbracket))
  end

  test "should show mbracket" do
    get :show, id: @mbracket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mbracket
    assert_response :success
  end

  test "should update mbracket" do
    patch :update, id: @mbracket, mbracket: { name: @mbracket.name }
    assert_redirected_to mbracket_path(assigns(:mbracket))
  end

  test "should destroy mbracket" do
    assert_difference('Mbracket.count', -1) do
      delete :destroy, id: @mbracket
    end

    assert_redirected_to mbrackets_path
  end
end
