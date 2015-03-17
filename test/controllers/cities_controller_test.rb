require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  test "should get paris" do
    get :paris
    assert_response :success
  end

  test "should get bangkok" do
    get :bangkok
    assert_response :success
  end

  test "should get santiago" do
    get :santiago
    assert_response :success
  end

  test "should get newyork" do
    get :newyork
    assert_response :success
  end

  test "should get bamako" do
    get :bamako
    assert_response :success
  end

end
