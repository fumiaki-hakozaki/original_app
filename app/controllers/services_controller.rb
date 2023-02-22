class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]
  before_action :set_factory, only: %i[ edit update ]

  # GET /services or /services.json

  def index
    if params[:factory_id].present?
      @factory = Factory.find(params[:factory_id])
      @services = Service.where(factory_id: @factory.id)
    else
      @services = Service.all
    end
  end

  # GET /services/1 or /services/1.json
  def show
    @factory = @service.factory
  end

  # GET /services/new
  def new
    @factory = Factory.find(params[:factory_id])
    @service = @factory.services.new
  end

  # GET /services/1/edit
  def edit
     @factory = Factory.find_by(id: params[:factory_id])
  end

  # POST /services or /services.json
  def create
    @factory = Factory.find(params[:factory_id])
    @service = @factory.services.build(service_params)
    if @service.save
    redirect_to factory_services_path(@factory), notice: "サービスを登録しました"
    else
      render :new
    end
  end

  # PATCH/PUT /services/1 or /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to factory_service_path(@factory, @service), notice: "サービス内容を編集しました！" }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    set_factory
    @service.destroy
    respond_to do |format|
      format.html { redirect_to factory_path(@factory), notice: "サービス内容を削除しました！" }
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
        @factory = Factory.find_by(id: params[:factory_id])
      end
      if @factory.nil?
        raise ActiveRecord::RecordNotFound, "Couldn't find Factory with 'id'=#{params[:factory_id]}"
      end
    end

    # Only allow a list of trusted parameters through.
    def service_params
       params.require(:service).permit(:service_name, :price, :content, :factory_id)
    end
end