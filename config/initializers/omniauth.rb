Rails.application.config.middleware.use OmniAuth::Builder do
  provider :starterleague, '026f68feec3d856b11a2af8d4a8aef727f24d620b4e78df9970f0a7ba1c6b31e', '7d50abefcbcb3851b1095722e5cefe11ecacf5fa02122f503c6e52a6e89b0ef6'
end

# ENV['STARTERLEAGUE_APP_ID'], ENV['STARTERLEAGUE_APP_SECRET']
