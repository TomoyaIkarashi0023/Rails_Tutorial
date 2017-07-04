require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count', 1 do
      post users_path, params: { user:{ name: "",
                                       email: "user@invalid",
                                       password: "foo",
                                       password_confirmation: "bar" }}
    end
    follow_redirect!
    assert_template 'user/show'
    assert is_logged_in?
  end
end
