class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :state
  belongs_to_active_hash :shipping_burden
  belongs_to_active_hash :shipping_day
  belongs_to_active_hash :reservation_email
  belongs_to_active_hash :prefecture


  def previous
    Item.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Item.where("id > ?", self.id).order("id ASC").first
  end
  
end
