require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address: @customer.address, city: @customer.city, contact_person: @customer.contact_person, email: @customer.email, kecamatan: @customer.kecamatan, note: @customer.note, organization: @customer.organization, phone: @customer.phone, postal_code: @customer.postal_code, province: @customer.province, segment: @customer.segment, total_visit: @customer.total_visit } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address: @customer.address, city: @customer.city, contact_person: @customer.contact_person, email: @customer.email, kecamatan: @customer.kecamatan, note: @customer.note, organization: @customer.organization, phone: @customer.phone, postal_code: @customer.postal_code, province: @customer.province, segment: @customer.segment, total_visit: @customer.total_visit } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end