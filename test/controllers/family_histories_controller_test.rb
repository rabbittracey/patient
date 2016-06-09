require 'test_helper'

class FamilyHistoriesControllerTest < ActionController::TestCase
  setup do
    @family_history = family_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_history" do
    assert_difference('FamilyHistory.count') do
      post :create, family_history: {  }
    end

    assert_redirected_to family_history_path(assigns(:family_history))
  end

  test "should show family_history" do
    get :show, id: @family_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_history
    assert_response :success
  end

  test "should update family_history" do
    patch :update, id: @family_history, family_history: {  }
    assert_redirected_to family_history_path(assigns(:family_history))
  end

  test "should destroy family_history" do
    assert_difference('FamilyHistory.count', -1) do
      delete :destroy, id: @family_history
    end

    assert_redirected_to family_histories_path
  end
end
