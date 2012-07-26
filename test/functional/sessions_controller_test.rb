require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    jo = users(:jo)
    post :create, name: jo.name, password: 'hunter2'
    assert_redirected_to root_url
    assert_equal jo.id, session[:user_id]
  end

  test "should fail login" do
    jo = users(:jo)
    post :create, name: jo.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    delete :destroy
    assert_redirected_to root_url
  end
end
