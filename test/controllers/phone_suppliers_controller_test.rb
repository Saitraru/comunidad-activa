require "test_helper"

class PhoneSuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_supplier = phone_suppliers(:one)
  end

  test "should get index" do
    get phone_suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_supplier_url
    assert_response :success
  end

  test "should create phone_supplier" do
    assert_difference('PhoneSupplier.count') do
      post phone_suppliers_url, params: { phone_supplier: { supplier_id: @phone_supplier.supplier_id, telefono: @phone_supplier.telefono } }
    end

    assert_redirected_to phone_supplier_url(PhoneSupplier.last)
  end

  test "should show phone_supplier" do
    get phone_supplier_url(@phone_supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_supplier_url(@phone_supplier)
    assert_response :success
  end

  test "should update phone_supplier" do
    patch phone_supplier_url(@phone_supplier), params: { phone_supplier: { supplier_id: @phone_supplier.supplier_id, telefono: @phone_supplier.telefono } }
    assert_redirected_to phone_supplier_url(@phone_supplier)
  end

  test "should destroy phone_supplier" do
    assert_difference('PhoneSupplier.count', -1) do
      delete phone_supplier_url(@phone_supplier)
    end

    assert_redirected_to phone_suppliers_url
  end
end
