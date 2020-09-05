class Image < ApplicationRecord
  class Image < ApplicationRecord
    mount_uploader :src, ImageUploader
    belongs_to :item
  end
end
