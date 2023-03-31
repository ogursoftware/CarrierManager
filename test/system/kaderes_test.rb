require "application_system_test_case"

class KaderesTest < ApplicationSystemTestCase
  setup do
    @kadere = kaderes(:one)
  end

  test "visiting the index" do
    visit kaderes_url
    assert_selector "h1", text: "Kaderes"
  end

  test "should create kadere" do
    visit kaderes_url
    click_on "New kadere"

    fill_in "Carrier company", with: @kadere.carrier_company
    fill_in "Email", with: @kadere.email
    fill_in "Name", with: @kadere.name
    fill_in "Phone", with: @kadere.phone
    fill_in "Trailer number", with: @kadere.trailer_number
    fill_in "Truck number", with: @kadere.truck_number
    click_on "Create Kadere"

    assert_text "Kadere was successfully created"
    click_on "Back"
  end

  test "should update Kadere" do
    visit kadere_url(@kadere)
    click_on "Edit this kadere", match: :first

    fill_in "Carrier company", with: @kadere.carrier_company
    fill_in "Email", with: @kadere.email
    fill_in "Name", with: @kadere.name
    fill_in "Phone", with: @kadere.phone
    fill_in "Trailer number", with: @kadere.trailer_number
    fill_in "Truck number", with: @kadere.truck_number
    click_on "Update Kadere"

    assert_text "Kadere was successfully updated"
    click_on "Back"
  end

  test "should destroy Kadere" do
    visit kadere_url(@kadere)
    click_on "Destroy this kadere", match: :first

    assert_text "Kadere was successfully destroyed"
  end
end
