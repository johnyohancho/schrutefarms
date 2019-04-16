class AddBnBToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :bnb, :boolean
  end
end
