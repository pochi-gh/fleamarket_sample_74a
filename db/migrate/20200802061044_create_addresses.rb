class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user
      t.string     :destination_first_name,           null: false
      t.string     :destination_last_name,            null: false
      t.string     :destination_first_name_kana,      null: false
      t.string     :destination_last_name_kana,       null: false
      t.integer    :postal_code,                      null: false
      t.references :prefecture,                       null: false
      t.string     :city,                             null: false
      t.string     :block,                            null: false
      t.string     :building
      t.string     :phone_numeber
      t.timestamps
    end
  end
end
