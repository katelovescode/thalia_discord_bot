Rails.application.routes.draw do
  mount ThaliaDiscordBot::Engine => "/thalia_discord_bot"
end
