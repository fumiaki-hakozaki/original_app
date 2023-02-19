class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]
  before_action :set_factory, only: %i[ edit update ]

  # GET /services or /services.json
  def index
    @services = Service.all
    set_factory
  end

  # GET /services/1 or /services/1.json
  def show
    @factory = @service.factory
  end

  # GET /services/new
  def new
    @factory = Factory.find(params[:factory_id])
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
    @factory = @service.factory
  end

  # POST /services or /services.json
  def create
    factory = Factory.find(params[:factory_id])
    @service = factory.services.build(service_params)
    respond_to do |format|
      if @service.save
        format.html { redirect_to factory_service_path(factory, @service),notice: "Service was successfully created." }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1 or /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to factory_service_path(@factory, @service), notice: "Service was successfully updated." }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    @service.destroy

    respond_to do |format|
      format.html { redirect_to services_url, notice: "Service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    def set_factory
      if @service.present?
        @factory = @service.factory
      else
        @factory = Factory.find(params[:factory_id])
      end
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:service_name, :price, :content, :id).merge(factory_id: params[:factory_id])
    end
end
