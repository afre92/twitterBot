require 'tweetkit'

module TwitterClient
 
 client = Tweetkit::Client.new(bearer_token: 'YOUR_BEARER_TOKEN_HERE',
 															consumer_key: 'YOUR_CONSUMER_KEY_HERE',
 															consumer_secret: 'YOUR_CONSUMER_SECRET_HERE')

 action to check price

end


# maybe have to make it a class