require "application_system_test_case"

class TypeCardsTest < ApplicationSystemTestCase
  setup do
    @type_card = type_cards(:one)
  end

  test "visiting the index" do
    visit type_cards_url
    assert_selector "h1", text: "Type Cards"
  end

  test "creating a Type card" do
    visit type_cards_url
    click_on "New Type Card"

    fill_in "Name", with: @type_card.name
    click_on "Create Type card"

    assert_text "Type card was successfully created"
    click_on "Back"
  end

  test "updating a Type card" do
    visit type_cards_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_card.name
    click_on "Update Type card"

    assert_text "Type card was successfully updated"
    click_on "Back"
  end

  test "destroying a Type card" do
    visit type_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type card was successfully destroyed"
  end
end