class User < ActiveRecord::Base
  attr_accessible :email
  has_many :authentications
  acts_as_voter
  has_karma(:item, :as => :submitter)

   def image_version(version = 'square')
    if self.authentications.pluck(:provider).include? "facebook"
      "http://graph.facebook.com/#{self.authentications.where(provider: 'facebook').first.uid}/picture?type=#{version}"
    end
  end

  	def oauth_token
  		self.authentications.where(provider: "facebook").first.oauth_token
  	end
  	def self.share_odd(user_id, item_url)
  		user = User.find(user_id)
  		user.facebook.put_connections("me", "oddplataform:odd", item: item_url)
  	end
  		

 	def facebook
  		@facebook ||= Koala::Facebook::API.new(self.oauth_token)
 		block_given? ? yield(@facebook) : @facebook
	rescue Koala::Facebook::APIError => e
  		logger.info e.to_s
  		nil # or consider a custom null object
	end
end
