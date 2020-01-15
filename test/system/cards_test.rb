require "application_system_test_case"

class CardsTest < ApplicationSystemTestCase
  setup do
    @card = cards(:one)
  end

  test "visiting the index" do
    visit cards_url
    assert_selector "h1", text: "Cards"
  end

  test "creating a Card" do
    visit cards_url
    click_on "New Card"

    fill_in "Context", with: @card.context
    fill_in "Description", with: @card.description
    fill_in "Headline", with: @card.headline
    fill_in "Image url", with: @card.image_url
    fill_in "Link url", with: @card.link_url
    fill_in "Movie url", with: @card.movie_url
    fill_in "Title", with: @card.title
    fill_in "Type card", with: @card.type_card_id
    fill_in "Type usr", with: @card.type_usr_id
    click_on "Create Card"

    assert_text "Card was successfully created"
    click_on "Back"
  end

  test "updating a Card" do
    visit cards_url
    click_on "Edit", match: :first

    fill_in "Context", with: @card.context
    fill_in "Description", with: @card.description
    fill_in "Headline", with: @card.headline
    fill_in "Image url", with: @card.image_url
    fill_in "Link url", with: @card.link_url
    fill_in "Movie url", with: @card.movie_url
    fill_in "Title", with: @card.title
    fill_in "Type card", with: @card.type_card_id
    fill_in "Type usr", with: @card.type_usr_id
    click_on "Update Card"

    assert_text "Card was successfully updated"
    click_on "Back"
  end

  test "destroying a Card" do
    visit cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card was successfully destroyed"
  end
end
