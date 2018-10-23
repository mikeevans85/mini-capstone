class CreateImageBanks < ActiveRecord::Migration[5.2]
  def change
    create_table :image_banks do |t|
      t.string :url
      t.integer :product_id

      t.timestamps
    end
  end
end
