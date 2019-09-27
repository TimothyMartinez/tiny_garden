class ProductsController < ApplicationController
  layout "admin", only: [:new, :admin_products, :update, :edit, :create, :destroy]

  def index
    @plants = Plant.all
    @products = Product.all
    @product = Product.find_by(params[:id])
  end

  def show
    @plants = Plant.all
  end

  # Admin actions

  def new
    @product = Product.new
  end

  def create
    redirect_to send(new_path(type: params['product']['sellable_type'], product_params: product_params ) )
  end

  def sellables
    @plant = Plant.new
    @accessory = Accessory.new
    @product = Product.find(params[:product_id])
  end

  def admin_products
    @products = Product.all
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_back(fallback_location: admin_path)
  end

  private

  def product_params
    params.require(:product).permit(:sku, :price, :sellable_type)
  end
end
