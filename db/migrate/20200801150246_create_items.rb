class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.text :explain, null:false
      t.references :state, null:false
      t.integer :price, null:false
      t.references :seller, null:false
      t.references :buyer
      t.references :reservation_email, null:false
      t.references :category, null:false
      t.references :shipping_burden, null:false
      t.references :shipping_day, null:false
      t.references :prefecture, null:false
      t.references :brand, null:false
      t.timestamps
    end
  end
end
