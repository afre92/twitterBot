require 'tweetkit'

class TwitterClient
 
	def initialize
 		@client = Tweetkit::Client.new(bearer_token: 'YOUR_BEARER_TOKEN_HERE',
 															consumer_key: 'YOUR_CONSUMER_KEY_HERE',
 															consumer_secret: 'YOUR_CONSUMER_SECRET_HERE')
	end


	def check_price
		
	end

end


# maybe have to make it a class