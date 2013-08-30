Twitter.configure do |config|
  config.consumer_key = ENV['BD_TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['BD_TWITTER_CONSUMER_SECRET']
  config.oauth_token = ENV['YOUR_OAUTH_TOKEN']
  config.oauth_token_secret = ENV['YOUR_OAUTH_TOKEN_SECRET']
end