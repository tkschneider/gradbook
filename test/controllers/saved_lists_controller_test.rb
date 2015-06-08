require 'test_helper'

class SavedListsControllerTest < ActionController::TestCase
  setup do
    @saved_list = saved_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saved_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saved_list" do
    assert_difference('SavedList.count') do
      post :create, saved_list: {  }
    end

    assert_redirected_to saved_list_path(assigns(:saved_list))
  end

  test "should show saved_list" do
    get :show, id: @saved_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saved_list
    assert_response :success
  end

  test "should update saved_list" do
    patch :update, id: @saved_list, saved_list: {  }
    assert_redirected_to saved_list_path(assigns(:saved_list))
  end

  test "should destroy saved_list" do
    assert_difference('SavedList.count', -1) do
      delete :destroy, id: @saved_list
    end

    assert_redirected_to saved_lists_path
  end
end
