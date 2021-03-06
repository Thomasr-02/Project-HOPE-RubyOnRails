require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { addr_city: @user.addr_city, addr_country: @user.addr_country, addr_state: @user.addr_state, addr_street: @user.addr_street, addr_zipcode: @user.addr_zipcode, cpf: @user.cpf, data: @user.data, date_nasc: @user.date_nasc, email: @user.email, first_name: @user.first_name, image_url: @user.image_url, last_name: @user.last_name, movie_url: @user.movie_url, password: @user.password, phone: @user.phone, profission: @user.profission, type_user: @user.type_user } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { addr_city: @user.addr_city, addr_country: @user.addr_country, addr_state: @user.addr_state, addr_street: @user.addr_street, addr_zipcode: @user.addr_zipcode, cpf: @user.cpf, data: @user.data, date_nasc: @user.date_nasc, email: @user.email, first_name: @user.first_name, image_url: @user.image_url, last_name: @user.last_name, movie_url: @user.movie_url, password: @user.password, phone: @user.phone, profission: @user.profission, type_user: @user.type_user } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
