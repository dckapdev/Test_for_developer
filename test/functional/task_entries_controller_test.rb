require 'test_helper'

class TaskEntriesControllerTest < ActionController::TestCase
  setup do
    @task_entry = task_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:task_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task_entry" do
    assert_difference('TaskEntry.count') do
      post :create, :task_entry => @task_entry.attributes
    end

    assert_redirected_to task_entry_path(assigns(:task_entry))
  end

  test "should show task_entry" do
    get :show, :id => @task_entry.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @task_entry.to_param
    assert_response :success
  end

  test "should update task_entry" do
    put :update, :id => @task_entry.to_param, :task_entry => @task_entry.attributes
    assert_redirected_to task_entry_path(assigns(:task_entry))
  end

  test "should destroy task_entry" do
    assert_difference('TaskEntry.count', -1) do
      delete :destroy, :id => @task_entry.to_param
    end

    assert_redirected_to task_entries_path
  end
end
