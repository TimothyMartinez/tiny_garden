class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  def to_json(options={})
    {
      id: self.id,
      sku: self.product.sku,
      price: self.product.price,
      amount: self.amount,
      sellableType: self.product.sellable_type,
      sellableId: self.product.sellable_id,
    }
  end
end
