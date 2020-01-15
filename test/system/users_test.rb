require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Addr city", with: @user.addr_city
    fill_in "Addr country", with: @user.addr_country
    fill_in "Addr state", with: @user.addr_state
    fill_in "Addr street", with: @user.addr_street
    fill_in "Addr zipcode", with: @user.addr_zipcode
    fill_in "Cpf", with: @user.cpf
    fill_in "Data", with: @user.data
    fill_in "Date nasc", with: @user.date_nasc
    fill_in "Email", with: @user.email
    fill_in "First name", with: @user.first_name
    fill_in "Image url", with: @user.image_url
    fill_in "Last name", with: @user.last_name
    fill_in "Movie url", with: @user.movie_url
    fill_in "Password", with: @user.password
    fill_in "Phone", with: @user.phone
    fill_in "Profission", with: @user.profission
    fill_in "Type user", with: @user.type_user
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Addr city", with: @user.addr_city
    fill_in "Addr country", with: @user.addr_country
    fill_in "Addr state", with: @user.addr_state
    fill_in "Addr street", with: @user.addr_street
    fill_in "Addr zipcode", with: @user.addr_zipcode
    fill_in "Cpf", with: @user.cpf
    fill_in "Data", with: @user.data
    fill_in "Date nasc", with: @user.date_nasc
    fill_in "Email", with: @user.email
    fill_in "First name", with: @user.first_name
    fill_in "Image url", with: @user.image_url
    fill_in "Last name", with: @user.last_name
    fill_in "Movie url", with: @user.movie_url
    fill_in "Password", with: @user.password
    fill_in "Phone", with: @user.phone
    fill_in "Profission", with: @user.profission
    fill_in "Type user", with: @user.type_user
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
