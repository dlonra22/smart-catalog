Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['GIT_KEY'], ENV['GIT_SECRET']
    provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
end
