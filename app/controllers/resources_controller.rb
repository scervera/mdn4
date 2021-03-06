class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  after_action :verify_authorized, except: [:index, :sort]

  layout "interior"

  # GET /resources
  # GET /resources.json
  def index
    @resources = Resource.all
  end
  
  def sort
    params[:order].each do |key,value|
      Resource.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end

  def listing
    @resources = Resource.all
    authorize @resources
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    authorize @resource
  end

  # GET /resources/new
  def new
    @resource = Resource.new
    authorize @resource
  end

  # GET /resources/1/edit
  def edit
    authorize @resource
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(resource_params)
    authorize @resource

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resources/1
  # PATCH/PUT /resources/1.json
  def update
    respond_to do |format|
      if @resource.update(resource_params)
        authorize @resource
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource.destroy
    authorize @resource
    respond_to do |format|
      format.html { redirect_to resources_url, notice: 'Resource was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource
      @resource = Resource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_params
      params.require(:resource).permit(:title, :description, :video_url, :preview, :priority, :remove_attachments, {attachments: []})
    end
end
