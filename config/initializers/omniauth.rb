Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, Rails.application.credentials.github[:key], Rails.application.credentials.github[:secret]
    provider :google_oauth2, Rails.application.credentials.google[:key], Rails.application.credentials.google[:secret]
end
OmniAuth.config.allowed_request_methods = %i[get]