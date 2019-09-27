class CreateAccessories < ActiveRecord::Migration[6.0]
  def change
    create_table :accessories do |t|
      t.string :description
      t.string :name
      t.integer :variant

      t.timestamps
    end
  end
end
