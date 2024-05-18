require_relative "lib/thalia_discord_bot/version"

Gem::Specification.new do |spec|
  spec.name        = "thalia_discord_bot"
  spec.version     = ThaliaDiscordBot::VERSION
  spec.authors     = ["Kate"]
  spec.email       = ["kate@katelovescode.com"]
  spec.homepage    = "https://github.com/katelovescode/thalia_discord_bot"
  spec.summary     = "Bot for Thalia Discord app for writers"
  spec.description = "Bot user that handles bot actions for the Thalia Discord app for writers"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/katelovescode/thalia_discord_bot"
  spec.metadata["changelog_uri"] = "https://github.com/katelovescode/thalia_discord_bot"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.3"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
end
