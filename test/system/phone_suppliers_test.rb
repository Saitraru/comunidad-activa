require "application_system_test_case"

class PhoneSuppliersTest < ApplicationSystemTestCase
  setup do
    @phone_supplier = phone_suppliers(:one)
  end

  test "visiting the index" do
    visit phone_suppliers_url
    assert_selector "h1", text: "Phone Suppliers"
  end

  test "creating a Phone supplier" do
    visit phone_suppliers_url
    click_on "New Phone Supplier"

    fill_in "Supplier", with: @phone_supplier.supplier_id
    fill_in "Telefono", with: @phone_supplier.telefono
    click_on "Create Phone supplier"

    assert_text "Phone supplier was successfully created"
    click_on "Back"
  end

  test "updating a Phone supplier" do
    visit phone_suppliers_url
    click_on "Edit", match: :first

    fill_in "Supplier", with: @phone_supplier.supplier_id
    fill_in "Telefono", with: @phone_supplier.telefono
    click_on "Update Phone supplier"

    assert_text "Phone supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone supplier" do
    visit phone_suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone supplier was successfully destroyed"
  end
end
