class User < ActiveRecord::Base
  attr_accessible :email
  has_many :authentications

   def image_version(version = 'square')
    if self.authentications.pluck(:provider).include? "facebook"
      "http://graph.facebook.com/#{self.authentications.where(provider: 'facebook').first.uid}/picture?type=#{version}"
    end
  end
end
