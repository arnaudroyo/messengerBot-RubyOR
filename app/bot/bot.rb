require 'facebook/messenger'
include Facebook::Messenger


Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"],
  subscribed_fields: %w[messages messaging_postbacks]
)

Bot.on :message do |message|
    if message.text.include?("Bonjour") || message.text.include?("Salut") || message.text.include?("Coucou")
        message.reply(text: 'Hey !')
    elsif message.text.include?("a+") || message.text.include?("Aurevoir")
        message.reply(text: 'Aller salut !')
    elsif message.text.include?("ça va") || message.text.include?("Ça va") || message.text.include?("ça va") 
        message.reply(text: 'Imhotep')
    elsif message.text.include?("Qui est la plus belle") || message.text.include?("qui est la meilleure") 
        message.reply(text: 'Clara Darchand <3')
    else
        message.reply(text: 'ye ne compwend pa, jsuis un po débile pour l\'instant!')
    end
end