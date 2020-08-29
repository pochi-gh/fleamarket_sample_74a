class Address < ApplicationRecord
  belongs_to :user
  validates  :destination_first_name, :destination_last_name, :destination_first_name_kana, :destination_last_name_kana, :postal_code, :prefecture_id, :city, :block, presence: true
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
