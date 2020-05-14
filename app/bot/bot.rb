require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCES_TOKEN"]
)

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end