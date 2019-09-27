class AddUrlToAccessories < ActiveRecord::Migration[6.0]
  def change
    add_column :accessories, :url, :string
  end
end
