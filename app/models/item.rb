class Item < ApplicationRecord
  belongs_to_active_hash :state
  belongs_to_active_hash :shipping_burden
end
