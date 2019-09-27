class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :light
      t.integer :size
      t.integer :maintenance
      t.integer :category
      t.string :description

      t.timestamps
    end
  end
end
