class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  mount_uploader :image, ImageUploader

  default_scope { order('created_at DESC') }
end
