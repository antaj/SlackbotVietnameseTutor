class LanguageBot < SlackRubyBot::Bot
  command 'hello' do |client, data, match|
    user = User.find_or_create_by(username: data.user)

    I18n.locale = user.locale
    text = I18n.t "hello", user: data.user
    client.say(text: text, channel: data.channel)
  end

  command 'set_locale' do |client, data, match|
    user = User.find_or_create_by(username: data.user)
    user.locale = match[:expression]
    user.save
  end

end