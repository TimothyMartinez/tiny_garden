class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :sku
      t.integer :price

      t.timestamps
    end
  end
end
