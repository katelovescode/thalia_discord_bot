module ThaliaDiscordBot
  class Engine < ::Rails::Engine
    isolate_namespace(ThaliaDiscordBot)

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
      g.factory_bot suffix: 'factory'
    end

    config.after_initialize do
      bot = Discordrb::Bot.new(token: Rails.application.credentials.dig(:discord, :token))
  
      bot.message(with_text: 'Ping!') do |event|
        event.respond('Pong!')
      end
  
      bot.run
    end
  end
end
