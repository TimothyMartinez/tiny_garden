class Accessory < ApplicationRecord
  has_many_attached :images
  has_many :products, as: :sellable, dependent: :destroy
end
