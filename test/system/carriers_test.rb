require "application_system_test_case"

class CarriersTest < ApplicationSystemTestCase
  setup do
    @carrier = carriers(:one)
  end

  test "visiting the index" do
    visit carriers_url
    assert_selector "h1", text: "Carriers"
  end

  test "should create carrier" do
    visit carriers_url
    click_on "New carrier"

    fill_in "Address", with: @carrier.address
    fill_in "Contact number", with: @carrier.contact_number
    fill_in "Dot number", with: @carrier.dot_number
    fill_in "Main contact", with: @carrier.main_contact
    fill_in "Mc number", with: @carrier.mc_number
    fill_in "Name", with: @carrier.name
    click_on "Create Carrier"

    assert_text "Carrier was successfully created"
    click_on "Back"
  end

  test "should update Carrier" do
    visit carrier_url(@carrier)
    click_on "Edit this carrier", match: :first

    fill_in "Address", with: @carrier.address
    fill_in "Contact number", with: @carrier.contact_number
    fill_in "Dot number", with: @carrier.dot_number
    fill_in "Main contact", with: @carrier.main_contact
    fill_in "Mc number", with: @carrier.mc_number
    fill_in "Name", with: @carrier.name
    click_on "Update Carrier"

    assert_text "Carrier was successfully updated"
    click_on "Back"
  end

  test "should destroy Carrier" do
    visit carrier_url(@carrier)
    click_on "Destroy this carrier", match: :first

    assert_text "Carrier was successfully destroyed"
  end
end
