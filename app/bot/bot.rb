require 'facebook/messenger'
include Facebook::Messenger


Facebook::Messenger::Subscriptions.subscribe(
  access_token: ENV["ACCESS_TOKEN"],
  subscribed_fields: %w[messages messaging_postbacks]
)

Bot.on :message do |message|
    if message.text.include?("Bonjour") || message.text.include?("Salut") || message.text.include?("Coucou")
        message.reply(text: 'Hey !')
    elsif message.text.include?("a+") || message.text.include?("Aurevoir") || message.text.include?("A+")
        message.reply(text: 'Aller salut !')
    elsif message.text.include?("a va")
        message.reply(text: 'Imhotep')
    elsif message.text.include?("ui est la plus belle") || message.text.include?("ui est la meilleure") 
        message.reply(text: 'Clara Darchand <3')
    elsif message.text.include?("^^") 
        message.reply(text: '^^ rigolo cet emoji ^^')
    elsif message.text.include?("oh") || message.text.include?("Oh")  
        message.reply(text: 'Empressionant n\'est ce pas ;)')
    else
        message.reply(text: 'Mmm..?')
    end
end