require 'test_helper'

class ChefConfigsControllerTest < ActionController::TestCase
  setup do
    @chef_config = chef_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chef_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chef_config" do
    assert_difference('ChefConfig.count') do
      post :create, :chef_config => @chef_config.attributes
    end

    assert_redirected_to chef_config_path(assigns(:chef_config))
  end

  test "should show chef_config" do
    get :show, :id => @chef_config.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @chef_config.to_param
    assert_response :success
  end

  test "should update chef_config" do
    put :update, :id => @chef_config.to_param, :chef_config => @chef_config.attributes
    assert_redirected_to chef_config_path(assigns(:chef_config))
  end

  test "should destroy chef_config" do
    assert_difference('ChefConfig.count', -1) do
      delete :destroy, :id => @chef_config.to_param
    end

    assert_redirected_to chef_configs_path
  end
end
