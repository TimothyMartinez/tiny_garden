class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit]
  layout "admin", only: :new
  def index
    @filters = [ # TODO: need to get filter values from Model. Like: Plant.categories
      [
        { value: 0, label: 'small' },
        { value: 1, label: 'medium' },
        { value: 2, label: 'large' }
      ],
      [
        { value: 0, label: 'low' },
        { value: 1, label: 'partial' },
        { value: 2, label: 'full' }
      ],
      [
        { value: 0, label: 'easy to care' },
        { value: 1, label: 'takes skill' },
        { value: 2, label: 'difficult to care' },
      ],
      [
        { value: 0, label: 'herb' },
        { value: 1, label: 'houseplant' },
      ]
    ]
    @plants = Plant.all
    @plants = @plants.by_size(params[:size]&.split(",")) if params[:size]&.split(",")&.any?
    @plants = @plants.by_light(params[:light]&.split(",")) if params[:light]&.split(",")&.any?
    @plants = @plants.by_maintenance(params[:maintenance]&.split(",")) if params[:maintenance]&.split(",")&.any?
    @plants = @plants.by_category(params[:category]&.split(",")) if params[:category]&.split(",")&.any?
    respond_to do |format|
      format.html {}
      format.json { render json: { plants: @plants } }
    end
  end

  def show
    respond_to do |format|
      format.html {}
      format.json { render json: @plant.to_json }
    end
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      Product.create(product_params.merge({sellable_type: 'Plant', sellable_id: @plant.id}))
      redirect_to admin_products_path
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def plant_params
    ['size', 'light', 'maintenance', 'category'].each do |attr|
      params[:plant][attr] = params[:plant][attr].to_i
    end
    params.require(:plant).permit(:name, :size, :light, :maintenance, :category, :description, :images => [])
  end

  def product_params
    params.require(:plant).permit(:amount, :sku, :price)
  end
end
