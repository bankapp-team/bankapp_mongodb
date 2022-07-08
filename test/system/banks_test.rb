require "application_system_test_case"

class BanksTest < ApplicationSystemTestCase
  setup do
    @bank = banks(:one)
  end

  test "visiting the index" do
    visit banks_url
    assert_selector "h1", text: "Banks"
  end

  test "should create bank" do
    visit banks_url
    click_on "New bank"

    fill_in "Address", with: @bank.address
    fill_in "Bankname", with: @bank.bankname
    fill_in "Branchname", with: @bank.branchname
    fill_in "District", with: @bank.district
    fill_in "Ifsc", with: @bank.ifsc
    fill_in "Pincode", with: @bank.pincode
    fill_in "State", with: @bank.state
    click_on "Create Bank"

    assert_text "Bank was successfully created"
    click_on "Back"
  end

  test "should update Bank" do
    visit bank_url(@bank)
    click_on "Edit this bank", match: :first

    fill_in "Address", with: @bank.address
    fill_in "Bankname", with: @bank.bankname
    fill_in "Branchname", with: @bank.branchname
    fill_in "District", with: @bank.district
    fill_in "Ifsc", with: @bank.ifsc
    fill_in "Pincode", with: @bank.pincode
    fill_in "State", with: @bank.state
    click_on "Update Bank"

    assert_text "Bank was successfully updated"
    click_on "Back"
  end

  test "should destroy Bank" do
    visit bank_url(@bank)
    click_on "Destroy this bank", match: :first

    assert_text "Bank was successfully destroyed"
  end
end
