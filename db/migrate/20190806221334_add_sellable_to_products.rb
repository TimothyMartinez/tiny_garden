class AddSellableToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :sellable, polymorphic: true, null: false
  end
end
