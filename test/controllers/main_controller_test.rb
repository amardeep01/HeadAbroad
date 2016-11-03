require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get agentLogin" do
    get :agentLogin
    assert_response :success
  end

end
