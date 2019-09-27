class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :update]

  def index
  end 

  def show 
  end 
  

  def update 
    @cart.update(cart_params)
  end 

  private 
  def set_cart 
    @cart = current_user&.cart
  end 
  def cart_params 
    params.require(:cart).permit(:cart_products)
  end 
end 
