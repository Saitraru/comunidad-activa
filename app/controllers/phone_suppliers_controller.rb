class PhoneSuppliersController < ApplicationController
  before_action :set_phone_supplier, only: %i[ show edit update destroy ]

  # GET /phone_suppliers or /phone_suppliers.json
  def index
    @phone_suppliers = PhoneSupplier.all
  end

  # GET /phone_suppliers/1 or /phone_suppliers/1.json
  def show
  end

  # GET /phone_suppliers/new
  def new
    @phone_supplier = PhoneSupplier.new
  end

  # GET /phone_suppliers/1/edit
  def edit
  end

  # POST /phone_suppliers or /phone_suppliers.json
  def create
    @phone_supplier = PhoneSupplier.new(phone_supplier_params)

    respond_to do |format|
      if @phone_supplier.save
        format.html { redirect_to @phone_supplier, notice: "Phone supplier was successfully created." }
        format.json { render :show, status: :created, location: @phone_supplier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phone_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_suppliers/1 or /phone_suppliers/1.json
  def update
    respond_to do |format|
      if @phone_supplier.update(phone_supplier_params)
        format.html { redirect_to @phone_supplier, notice: "Phone supplier was successfully updated." }
        format.json { render :show, status: :ok, location: @phone_supplier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phone_supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_suppliers/1 or /phone_suppliers/1.json
  def destroy
    @phone_supplier.destroy
    respond_to do |format|
      format.html { redirect_to phone_suppliers_url, notice: "Phone supplier was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_supplier
      @phone_supplier = PhoneSupplier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phone_supplier_params
      params.require(:phone_supplier).permit(:telefono, :supplier_id)
    end
end
