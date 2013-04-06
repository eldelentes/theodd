class Item < ActiveRecord::Base
  attr_accessible :buylink, :title, :brand, :image, :remote_image_url
  mount_uploader :image, ImageUploader
end
