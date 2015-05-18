require 'test_helper'

class SearchadminsControllerTest < ActionController::TestCase
  setup do
    @searchadmin = searchadmins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searchadmins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create searchadmin" do
    assert_difference('Searchadmin.count') do
      post :create, searchadmin: {  }
    end

    assert_redirected_to searchadmin_path(assigns(:searchadmin))
  end

  test "should show searchadmin" do
    get :show, id: @searchadmin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @searchadmin
    assert_response :success
  end

  test "should update searchadmin" do
    patch :update, id: @searchadmin, searchadmin: {  }
    assert_redirected_to searchadmin_path(assigns(:searchadmin))
  end

  test "should destroy searchadmin" do
    assert_difference('Searchadmin.count', -1) do
      delete :destroy, id: @searchadmin
    end

    assert_redirected_to searchadmins_path
  end
end
