class AffiliatesController < ApplicationController
  before_action :set_affiliate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :sort]
  layout "interior"
  
  # GET /affiliates
  # GET /affiliates.json
  def index
    @affiliates = Affiliate.all
  end

  def sort
    params[:order].each do |key,value|
      Affiliate.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end

  def affiliatechurches
    @affiliates = Affiliate.all
  end

  # GET /affiliates/1
  # GET /affiliates/1.json
  def show
  end

  # GET /affiliates/new
  def new
    @affiliate = Affiliate.new
  end

  # GET /affiliates/1/edit
  def edit
  end

  # POST /affiliates
  # POST /affiliates.json
  def create
    @affiliate = Affiliate.new(affiliate_params)

    respond_to do |format|
      if @affiliate.save
        format.html { redirect_to @affiliate, notice: 'Affiliate was successfully created.' }
        format.json { render :show, status: :created, location: @affiliate }
      else
        format.html { render :new }
        format.json { render json: @affiliate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affiliates/1
  # PATCH/PUT /affiliates/1.json
  def update
    respond_to do |format|
      if @affiliate.update(affiliate_params)
        format.html { redirect_to @affiliate, notice: 'Affiliate was successfully updated.' }
        format.json { render :show, status: :ok, location: @affiliate }
      else
        format.html { render :edit }
        format.json { render json: @affiliate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affiliates/1
  # DELETE /affiliates/1.json
  def destroy
    @affiliate.destroy
    respond_to do |format|
      format.html { redirect_to affiliates_url, notice: 'Affiliate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_affiliate
      @affiliate = Affiliate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affiliate_params
      params.require(:affiliate).permit(:name, :address1, :address2, :city, :state, :zipcode, :pastor, :denomination)
    end
end