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

    fill_in "Country", with: @customer.country
    fill_in "Customerid", with: @customer.customerid
    fill_in "District", with: @customer.district
    fill_in "Email", with: @customer.email
    fill_in "Fname", with: @customer.fname
    fill_in "Ifsc", with: @customer.ifsc
    fill_in "Lname", with: @customer.lname
    fill_in "Mobile", with: @customer.mobile
    fill_in "Pancard", with: @customer.pancard
    fill_in "State", with: @customer.state
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "should update Customer" do
    visit customer_url(@customer)
    click_on "Edit this customer", match: :first

    fill_in "Country", with: @customer.country
    fill_in "Customerid", with: @customer.customerid
    fill_in "District", with: @customer.district
    fill_in "Email", with: @customer.email
    fill_in "Fname", with: @customer.fname
    fill_in "Ifsc", with: @customer.ifsc
    fill_in "Lname", with: @customer.lname
    fill_in "Mobile", with: @customer.mobile
    fill_in "Pancard", with: @customer.pancard
    fill_in "State", with: @customer.state
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
