class User < ApplicationRecord
  has_many :reviews
  has_one_attached :image
  has_one :cart
  has_and_belongs_to_many :products
  has_many :cart_products, through: :cart, source: 'products'
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
end
