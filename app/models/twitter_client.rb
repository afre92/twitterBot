require 'tweetkit'
require 'httparty'

class TwitterClient
 
	def initialize
 		@client = Tweetkit::Client.new(bearer_token: Rails.application.credentials.twitter.bearer_token,
 															api_key: Rails.application.credentials.twitter.api_key,
 															api_secret_key: Rails.application.credentials.twitter.api_secret_key)
	end


	def check_price
		response = HTTParty.get("https://data.messari.io/api/v1/assets/one?x-messari-api-key=#{Rails.application.credentials.messari.api_key}")
	end

end


# maybe have to make it a class