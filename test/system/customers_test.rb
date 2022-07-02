require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "should create customer" do
    visit customers_url
    click_on "New customer"

    fill_in "Aadhaar number", with: @customer.aadhaar_number
    fill_in "Bank branch", with: @customer.bank_branch_id
    fill_in "Email address", with: @customer.email_address
    fill_in "First name", with: @customer.first_name
    fill_in "Last name", with: @customer.last_name
    fill_in "Mobile number", with: @customer.mobile_number
    fill_in "Pan", with: @customer.pan_id
    fill_in "Permanent address", with: @customer.permanent_address
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Aadhaar number", with: @customer.aadhaar_number
    fill_in "Bank branch", with: @customer.bank_branch_id
    fill_in "Email address", with: @customer.email_address
    fill_in "First name", with: @customer.first_name
    fill_in "Last name", with: @customer.last_name
    fill_in "Mobile number", with: @customer.mobile_number
    fill_in "Pan", with: @customer.pan_id
    fill_in "Permanent address", with: @customer.permanent_address
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer" do
    visit customer_url(@customer)
    click_on "Destroy this customer", match: :first

    assert_text "Customer was successfully destroyed"
  end
end
