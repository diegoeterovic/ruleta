require 'test_helper'

class RoulettesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get roulettes_new_url
    assert_response :success
  end

  test "should get show" do
    get roulettes_show_url
    assert_response :success
  end

end
