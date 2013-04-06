class Item < ActiveRecord::Base
  attr_accessible :buylink, :title
  acts_as_voteable

end
