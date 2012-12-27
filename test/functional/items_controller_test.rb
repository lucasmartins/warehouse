require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test "should get entrada" do
    get :entrada
    assert_response :success
  end

  test "should get saida" do
    get :saida
    assert_response :success
  end

end
