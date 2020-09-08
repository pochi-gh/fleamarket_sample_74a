class Item < ApplicationRecord
  belongs_to :seller, class_name: "User"
  has_many :images, dependent: :destroy
  belongs_to :category
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates_associated :images
  
  validates  :name, :explain, :category_id, :state_id, :shipping_burden_id, :prefecture_id, :shipping_day_id,:price, :seller_id,:images, presence: true
  validates :name, length: { maximum: 40 }
  validates :explain, length: { maximum: 1000 }
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :state
  belongs_to_active_hash :shipping_burden
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :prefecture


  def previous
    Item.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Item.where("id > ?", self.id).order("id ASC").first
  end
  
end
