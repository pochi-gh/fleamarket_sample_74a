class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  belongs_to :category
  accepts_nested_attributes_for :images, allow_destroy: true

  validates_associated :images
  
  validates  :name, :explain, :category_id, :state_id, :shipping_burden_id, :prefecture_id, :shipping_day_id,:price, :seller_id,:images, presence: true
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :state
  belongs_to_active_hash :shipping_burden
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :prefecture
end
