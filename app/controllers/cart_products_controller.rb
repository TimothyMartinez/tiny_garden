class CartProductsController < ApplicationController
  before_action :set_cart_product, only: [:update, :destroy]

  def index 
    @cart_items = current_user.cart.cart_products.map(&:to_json)
    render json: {
      cartItems: @cart_items
    }
  end 

  def create
    product = Product.find_by(sellable_id: params[:product_id])
    @cart_product = CartProduct.new(cart_id: current_user.cart.id, product_id: product.id, amount: 1)
    @cart_product.save
    redirect_to '/cart'

  end 

  def update 
    @cart_product.update(cart_product_params)
  end 

  def destroy 
    @cart_product.destroy
  end 

  private 
  def set_cart_product
    @cart_product = CartProduct.find(params[:id])
  end 
  def cart_product_params 
    params.require(:cart_product).permit(:product_id, :amount)
  end 
end 
