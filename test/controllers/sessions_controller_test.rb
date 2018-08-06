require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end


  test "should get new" do
    get login_path
    assert_response :success
  end

  test "should get profil first name" do
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_select "first_name:#{@user.first_name}"
  end

  test "should get profil last name" do
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_select "last_name:#{@user.last_name}"
  end

#vérification du lien logout de la nav bar
  test "should have link to logout" do
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_select logout_path
  end

#vérification du lien de la navbar vers show
  test "should go to profil" do
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    get root_path
  end

  #vérification du lien logout de la nav bar
    test "should have information" do
      get login_path
      post login_path, params: { session: { email:    @user.email,
                                            password: 'password' } }
      assert is_logged_in?
      assert_redirected_to @user
      follow_redirect!
      assert_select "email:#{@user.email}"
    end

end
