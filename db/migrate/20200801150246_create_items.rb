class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :explain
      t.references :state
      t.integer :price
      t.references :seller
      t.references :buyer
      t.references :reservation_email
      t.references :category
      t.references :shipping_burden
      t.references :shipping_day
      t.references :prefecture
      t.references :brand
      t.timestamps
    end
  end
end
