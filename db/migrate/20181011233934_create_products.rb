class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :size
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end