class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates  :destination_first_name, :destination_last_name, :destination_first_name_kana, :destination_last_name_kana, :postal_code, :prefecture_id, :city, :block, presence: true
  
  validates :destination_first_name_kana,
  format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/},
  presence: true
  validates :destination_last_name_kana,
  format: { with: /\A[\p{katakana} ー－&&[^ -~｡-ﾟ]]+\z/},
  presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
