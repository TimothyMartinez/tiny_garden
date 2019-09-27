class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, only: [:show, :edit, :destroy, :update] #you would put this in the UsersController
  def login_instagram
    Instagram.configure do |config|
      config.client_id = ENV['CLIENT_ID']
      config.client_secret = ENV['CLIENT_SECRET']
    end
    p ["loggging in",session[:access_token] ]
    if session[:access_token].nil?
      redirect_to Instagram.authorize_url(:redirect_uri => ENV['CALLBACK_URL'])
    end
  end
end
