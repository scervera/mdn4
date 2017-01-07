class MannerismsController < ApplicationController
  before_action :set_mannerism, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :sort, :index]
  layout 'interior'

  # GET /mannerisms
  # GET /mannerisms.json
  def index
    @mannerisms = Mannerism.all
  end

  def man_nerisms
    @mannerisms = Mannerism.all
  end

  def sort
    params[:order].each do |key,value|
      Mannerism.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end

  # GET /mannerisms/1
  # GET /mannerisms/1.json
  def show
  end

  # GET /mannerisms/new
  def new
    @mannerism = Mannerism.new
  end

  # GET /mannerisms/1/edit
  def edit
  end

  # POST /mannerisms
  # POST /mannerisms.json
  def create
    @mannerism = Mannerism.new(mannerism_params)

    respond_to do |format|
      if @mannerism.save
        format.html { redirect_to @mannerism, notice: 'Mannerism was successfully created.' }
        format.json { render :show, status: :created, location: @mannerism }
      else
        format.html { render :new }
        format.json { render json: @mannerism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mannerisms/1
  # PATCH/PUT /mannerisms/1.json
  def update
    respond_to do |format|
      if @mannerism.update(mannerism_params)
        format.html { redirect_to @mannerism, notice: 'Mannerism was successfully updated.' }
        format.json { render :show, status: :ok, location: @mannerism }
      else
        format.html { render :edit }
        format.json { render json: @mannerism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mannerisms/1
  # DELETE /mannerisms/1.json
  def destroy
    @mannerism.destroy
    respond_to do |format|
      format.html { redirect_to mannerisms_url, notice: 'Mannerism was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mannerism
      @mannerism = Mannerism.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mannerism_params
      params.require(:mannerism).permit(:quote, :author, :priority)
    end
end
