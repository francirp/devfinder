Rails.application.config.middleware.use OmniAuth::Builder do
  provider :starterleague, ENV['STARTERLEAGUE_APP_ID'], ENV['STARTERLEAGUE_APP_SECRET']
end

# ENV['STARTERLEAGUE_APP_ID'], ENV['STARTERLEAGUE_APP_SECRET']
