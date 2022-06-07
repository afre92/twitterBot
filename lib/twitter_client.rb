require 'tweetkit'
require 'httparty'

module TwitterClient
	client = Tweetkit::Client.new(bearer_token: Rails.application.credentials.twitter.bearer_token,
														api_key: Rails.application.credentials.twitter.api_key,
														api_secret_key: Rails.application.credentials.twitter.api_secret_key)

	def create_post
		client.post('')
	end
end


# # maybe have to make it a class

# module Tweetkit
#   class << self
#     def client
#       return @client if defined?(@client) && @client.same_options?(options)

#       @client = Tweetkit::Client.new(options)
#     end
#   end
# end