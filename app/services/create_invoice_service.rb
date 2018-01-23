class CreateInvoiceService
  def initialize(params={})
    @payment = Payment.find(params[:payment_id])
  end

  def charge
    create_invoice
  end

  private

  def create_invoice
    invoice = ServiceInvoice.create(payment: @payment,
      status: @payment.amount > 100000 ? "pending" : "issued")
    invoice.status
  end
end
