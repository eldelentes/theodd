class Item < ActiveRecord::Base
  attr_accessible :buylink, :title, :brand, :image, :remote_image_url
  mount_uploader :image, ImageUploader
  attr_accessible :buylink, :title
  acts_as_voteable

end
