class StaticPagesController < ApplicationController
  # before_action :login_instagram, only: [:landing]
  before_action :authenticate_user!, only: :admin
  layout "admin", only: :admin

  def landing
    @cart_items = current_user.cart.cart_products.map(&:to_json) if current_user
    @plants = Plant.limit(8)
    # @insta_feed = Instagram.client(:access_token => session[:access_token]).user_recent_media.shuffle.sample(4)
  end

  def care
    @doctor = params[:doctor] == 'doctor'
  end

  def doctor
  end

  def design
    if current_user
      @success_url = ENV['CREATE_SUCCESS_URL']
    else
      redirect_to root_path
    end
  end

  def cart
    if current_user
      @cart_items = current_user.cart.cart_products.map(&:to_json)
    else
      redirect_to root_path
    end
  end

  def admin
    if current_user.admin 
      @product = Product.new
    else 
      redirect_to root_path
    end
  end
end
