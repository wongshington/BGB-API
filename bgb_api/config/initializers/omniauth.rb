Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?

  provider :facebook, Rails.application.credentials.facebook[:facebook_app_id], Rails.application.credentials.facebook[:facebook_app_secret],
    scope: 'email', display: 'popup', info_fields: 'id,first_name,birthday,email'
end

