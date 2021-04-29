require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome index" do
    get '/'
    assert_response :success
    assert_select 'h1', /This page has been viewed/
  end

end
