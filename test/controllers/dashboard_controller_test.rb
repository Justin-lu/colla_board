require "test_helper"

class DashboardControllerTest < ActionController::TestCase
  setup do
    sign_in
  end

  test "Should Redirect to sign_in" do
    sign_out
    get :index
    assert_redirected_to sign_in_path
  end  

  test "Should GET => /dashboard/index" do
    get :index
    assert_response :success
  end

end
