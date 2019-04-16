class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.text :image_url

      t.timestamps
    end
  end
end
