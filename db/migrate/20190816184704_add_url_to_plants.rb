class AddUrlToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :url, :string
  end
end
