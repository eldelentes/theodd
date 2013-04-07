class Item < ActiveRecord::Base
  attr_accessible :buylink, :title, :brand, :image, :remote_image_url
  before_validation :ensure_has_value
  validates :title, :brand, :buylink, :image, :presence => true
  mount_uploader :image, ImageUploader
  attr_accessible :buylink, :title
  acts_as_voteable
  default_scope order("created_at desc")

protected
  def ensure_has_value
    self.title = "Untitled" if self.title == ""
    self.brand = "Unmarked"if self.brand == ""
  end
end
