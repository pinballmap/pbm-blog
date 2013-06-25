# Be sure to restart your server when you modify this file.

if Rails.env.development? || Rails.env.test?
  Enki::Application.config.secret_token = SecureRandom.hex(20)
else
  secret = ENV['APP_SECRET']
  if secret.length < 30
    raise "Secret token cannot be loaded"
  else
    Enki::Application.config.secret_token = secret
  end
end
