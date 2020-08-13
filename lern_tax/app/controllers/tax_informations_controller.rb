class TaxInformationsController < ApplicationController
  before_action :set_tax_information, only: [:show, :edit, :update, :destroy]

  # GET /tax_informations
  # GET /tax_informations.json
  def index
    @tax_informations = TaxInformation.all
  end

  # GET /tax_informations/1
  # GET /tax_informations/1.json
  def show
  end

  # GET /tax_informations/new
  def new
    @tax_information = TaxInformation.new
  end

  # GET /tax_informations/1/edit
  def edit
  end

  # POST /tax_informations
  # POST /tax_informations.json
  def create
    @tax_information = TaxInformation.new(tax_information_params)

    respond_to do |format|
      if @tax_information.save
        format.html { redirect_to @tax_information, notice: 'Tax information was successfully created.' }
        format.json { render :show, status: :created, location: @tax_information }
      else
        format.html { render :new }
        format.json { render json: @tax_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tax_informations/1
  # PATCH/PUT /tax_informations/1.json
  def update
    respond_to do |format|
      if @tax_information.update(tax_information_params)
        format.html { redirect_to @tax_information, notice: 'Tax information was successfully updated.' }
        format.json { render :show, status: :ok, location: @tax_information }
      else
        format.html { render :edit }
        format.json { render json: @tax_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tax_informations/1
  # DELETE /tax_informations/1.json
  def destroy
    @tax_information.destroy
    respond_to do |format|
      format.html { redirect_to tax_informations_url, notice: 'Tax information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_information
      @tax_information = TaxInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tax_information_params
      params.require(:tax_information).permit(:w2_wages, :capital_gains, :unemployment_insurance, :self_employment)
    end
end
