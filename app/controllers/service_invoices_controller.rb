class ServiceInvoicesController < ApplicationController
  before_action :set_service_invoice, only: [:show, :edit, :update, :destroy]

  # GET /service_invoices
  # GET /service_invoices.json
  def index
    @service_invoices = ServiceInvoice.all
  end

  # GET /service_invoices/1
  # GET /service_invoices/1.json
  def show
  end

  # GET /service_invoices/new
  def new
    @service_invoice = ServiceInvoice.new
  end

  # GET /service_invoices/1/edit
  def edit
  end

  # POST /service_invoices
  # POST /service_invoices.json
  def create
    @service_invoice = ServiceInvoice.new(service_invoice_params)

    respond_to do |format|
      if @service_invoice.save
        format.html { redirect_to @service_invoice, notice: 'Service invoice was successfully created.' }
        format.json { render :show, status: :created, location: @service_invoice }
      else
        format.html { render :new }
        format.json { render json: @service_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_invoices/1
  # PATCH/PUT /service_invoices/1.json
  def update
    respond_to do |format|
      if @service_invoice.update(service_invoice_params)
        format.html { redirect_to @service_invoice, notice: 'Service invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_invoice }
      else
        format.html { render :edit }
        format.json { render json: @service_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_invoices/1
  # DELETE /service_invoices/1.json
  def destroy
    @service_invoice.destroy
    respond_to do |format|
      format.html { redirect_to service_invoices_url, notice: 'Service invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_invoice
      @service_invoice = ServiceInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_invoice_params
      params.require(:service_invoice).permit(:payment_id, :status)
    end
end
