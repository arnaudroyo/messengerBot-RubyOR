require 'facebook/messenger'
include Facebook::Messenger


Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"],
  subscribed_fields: %w[messages messaging_postbacks]
)

Bot.on :message do |message|
    if message.text.include? "Bonjour"
        message.reply(text: 'Hey !')
    elsif message.text.include? "a+"
        message.reply(text: 'Aller salut !')
    elsif message.text.include? "ça va ?"
        message.reply(text: 'Imhotep')
    elsif message.text.include? "Qui est la plus belle ?"
        message.reply(text: 'Clara Darchand <3')
    else
        message.reply(text: 'ye ne compwend pa!')

    end
end