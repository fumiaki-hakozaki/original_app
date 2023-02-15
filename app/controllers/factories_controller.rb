class FactoriesController < ApplicationController
  before_action :set_factory, only: %i[ show edit update destroy ]

  # GET /factories or /factories.json
  def index
    @factories = Factory.all
  end

  def top
    @features = Feature.all
    @factories_search = Factory.ransack(params[:q])
    @factories = @factories_search.result
    @factories = @factories.where(factory_features: Feature.where(feature_id: params[:q][:feature_id])) if params[:q].present? && params[:q][:factory_name].present?
  end

  def search
    @q = Factory.ransack(params[:q])
    @factories = @q.result(distinct: true).includes(:features)
    render "factories/index"
  end

  # GET /factories/1 or /factories/1.json
  def show
    @favorite = current_user.favorites.find_by(factory_id: @factory.id)
    @services = @factory.services
  end

  # GET /factories/new
  def new
    @factory = Factory.new
  end

  # GET /factories/1/edit
  def edit
  end

  # POST /factories or /factories.json
  def create
    @factory = Factory.new(factory_params)

    respond_to do |format|
      if @factory.save
        format.html { redirect_to factory_url(@factory), notice: "Factory was successfully created." }
        format.json { render :show, status: :created, location: @factory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @factory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factories/1 or /factories/1.json
  def update
    respond_to do |format|
      if @factory.update(factory_params)
        format.html { redirect_to factory_url(@factory), notice: "Factory was successfully updated." }
        format.json { render :show, status: :ok, location: @factory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @factory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factories/1 or /factories/1.json
  def destroy
    @factory.destroy

    respond_to do |format|
      format.html { redirect_to factories_url, notice: "Factory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factory
      @factory = Factory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def factory_params
      params.require(:factory).permit(:factory_name, :summary, :address, :latitude, :longitude, :image,:image_cache,:user,:user_id,{ feature_ids: [] })
    end
end
