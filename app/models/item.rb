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
  	#coding: utf-8
    self.title = "Untitled" if title.nil?
    self.brand = "Unmarked"if brand.nil?
    title = title.titleize unless title.nil?
    brand = brand.titleize unless brand.nil?
  end
end
