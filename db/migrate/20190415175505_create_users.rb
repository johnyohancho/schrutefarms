class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :image_url
      t.integer :points
      t.string :password
      t.string :username

      t.timestamps
    end
  end
end
