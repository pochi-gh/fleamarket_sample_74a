class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :images, dependent: :destroy
  belongs_to_active_hash :state
  belongs_to_active_hash :shipping_burden
end
