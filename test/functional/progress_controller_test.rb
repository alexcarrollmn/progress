require 'test_helper'

class ProgressControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get short" do
    get :short
    assert_response :success
  end

  test "should get graph" do
    get :graph
    assert_response :success
  end

  test "should get day" do
    get :day
    assert_response :success
  end

end
