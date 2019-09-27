class Product < ApplicationRecord
  belongs_to :sellable, polymorphic: true
  has_many :cart_products
  has_many :reviews
  has_and_belongs_to_many :users
end
