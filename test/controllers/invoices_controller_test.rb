require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url, as: :json
    assert_response :success
  end

  test "should create invoice" do
    assert_difference("Invoice.count") do
      post invoices_url, params: { invoice: { company_name: @invoice.company_name, item_amount: @invoice.item_amount, item_description: @invoice.item_description, payment_terms: @invoice.payment_terms, po_date: @invoice.po_date, po_number: @invoice.po_number, quantity: @invoice.quantity, required_date: @invoice.required_date, shipping_method: @invoice.shipping_method, vendor_name: @invoice.vendor_name } }, as: :json
    end

    assert_response :created
  end

  test "should show invoice" do
    get invoice_url(@invoice), as: :json
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { company_name: @invoice.company_name, item_amount: @invoice.item_amount, item_description: @invoice.item_description, payment_terms: @invoice.payment_terms, po_date: @invoice.po_date, po_number: @invoice.po_number, quantity: @invoice.quantity, required_date: @invoice.required_date, shipping_method: @invoice.shipping_method, vendor_name: @invoice.vendor_name } }, as: :json
    assert_response :success
  end

  test "should destroy invoice" do
    assert_difference("Invoice.count", -1) do
      delete invoice_url(@invoice), as: :json
    end

    assert_response :no_content
  end
end
