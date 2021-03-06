# require 'test_helper'

# class UsersLoginTest < ActionDispatch::IntegrationTest

#   test "login with valid information" do
#     get login_path
#     post login_path, params: { session: { email:    @user.email,
#                                           password: 'password' } }
#     assert_redirected_to user_path
#     follow_redirect!
#     assert_template 'users/show'
#     assert_select login_path, count: 0
#     assert_select logout_path
#     assert_select user_path(@user)
#   end

#   test "login with valid information followed by logout" do
#     get login_path
#     post login_path, params: { session: { email:    @user.email,
#                                           password: 'password' } }
#     assert is_logged_in?
#     assert_redirected_to @user
#     follow_redirect!
#     assert_template 'users/show'
#     assert_select login_path, count: 0
#     assert_select logout_path
#     assert_select user_path(@user)
#     delete logout_path
#     assert_not is_logged_in?
#     assert_redirected_to root_url
#     follow_redirect!
#     assert_select login_path
#     assert_select logout_path,      count: 0
#     assert_select user_path(@user), count: 0
#   end

#     test "login with remembering" do
#     log_in_as(@user, remember_me: '1')
#     assert_not_empty cookies['remember_token']
#   end

#   test "login without remembering" do
#     # Log in to set the cookie.
#     log_in_as(@user, remember_me: '1')
#     # Log in again and verify that the cookie is deleted.
#     log_in_as(@user, remember_me: '0')
#     assert_empty cookies['remember_token']
#   end

# end
