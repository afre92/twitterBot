class HomeController < ApplicationController
	require 'httparty'
	require 'tweetkit'

	def run
		# price = check_price
		# render "this is the price #{price}"

		# if price_has_changed
		# 	# create post
		# 	# post it to twitter
		# else
		# end

		response = create_post
		puts response
	end

	private

		def create_post
 		  client = Tweetkit::Client.new(bearer_token:        Rails.application.credentials.twitter[:bearer_token],
 																		consumer_key:        Rails.application.credentials.twitter[:consumer_key],
 																		consumer_secret: 		 Rails.application.credentials.twitter[:consumer_secret],
 																		access_token: 			 Rails.application.credentials.twitter[:access_token],
 																		access_token_secret: Rails.application.credentials.twitter[:access_token_secret])

 		  # client = Tweetkit::Client.new(bearer_token: , consumer_key: 'YOUR_CONSUMER_KEY_HERE', consumer_secret: 'YOUR_CONSUMER_SECRET_HERE')
 		  client.post_tweet({text: "Hello world!!!"})
		end

		def check_price
			response = HTTParty.get("https://data.messari.io/api/v1/assets/harmony/metrics?x-messari-api-key=#{Rails.application.credentials.messari[:api_key]}")
			response["data"]["market_data"]["price_usd"]
		end

end
