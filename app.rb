require 'dotenv'
require 'rubygems'
require 'twilio-ruby'

Dotenv.load

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages.create(
  body: 'HelloWorld!',
  from: ENV['WHATSAPP_SANDBOX_NUMBER'],
  to: ENV['WHATSAPP_NUMBER'],
  media_url: 'https://media.giphy.com/media/ltBlodF5SOsYo/giphy.gif'
)

puts message.sid
