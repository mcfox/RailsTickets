require 'test_helper'

class ProjectAccessesControllerTest < ActionController::TestCase
  setup do
    @project_access = project_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_accesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_access" do
    assert_difference('ProjectAccess.count') do
      post :create, :project_access => @project_access.attributes
    end

    assert_redirected_to project_access_path(assigns(:project_access))
  end

  test "should show project_access" do
    get :show, :id => @project_access.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_access.to_param
    assert_response :success
  end

  test "should update project_access" do
    put :update, :id => @project_access.to_param, :project_access => @project_access.attributes
    assert_redirected_to project_access_path(assigns(:project_access))
  end

  test "should destroy project_access" do
    assert_difference('ProjectAccess.count', -1) do
      delete :destroy, :id => @project_access.to_param
    end

    assert_redirected_to project_accesses_path
  end
end
