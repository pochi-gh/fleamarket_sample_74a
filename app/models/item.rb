class Item < ApplicationRecord
  has_many :item_categories, dependent: :destroy
  has_many :categories, through: :item_categories
  accepts_nested_attributes_for :images, allow_destroy: true

  validates  :name, :explain, :category_id, :state_id, :shipping_burden_id, :prefecture_id, :shipping_day_id,:price, :seller_id, presence: true
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :state
  belongs_to_active_hash :shipping_burden
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :reservation_email
  belongs_to_active_hash :prefecture
end
