class FactoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
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
    @reviews = @factory.reviews
    @favorite = current_user.favorites.find_by(factory_id: @factory.id)
    @services = @factory.services
  end

  # GET /factories/new
  def new
    if current_user != @user
      unless current_user.admin?
        redirect_to factories_path 
      end
    end
    @factory = Factory.new
  end

  # GET /factories/1/edit
  def edit
    if current_user != @user
      unless current_user.admin?
        redirect_to factories_path 
      end
    end
  end

  # POST /factories or /factories.json
  def create
    @factory = Factory.new(factory_params)
    if current_user != @user
      unless current_user.admin?
        redirect_to factories_path 
      end
    end
    respond_to do |format|
      if @factory.save
        format.html { redirect_to factory_url(@factory), notice: "工場が作成されました！" }
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
        format.html { redirect_to factory_url(@factory), notice: "工場の内容を編集しました！" }
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
      format.html { redirect_to factories_url, notice: "工場を削除しました！" }
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
