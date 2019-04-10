# Be sure to restart your server when you modify this file.

if Rails.env.development? || Rails.env.test?
  Enki::Application.config.secret_key_base = SecureRandom.hex(20)
else
  # Your secret key for verifying the integrity of signed cookies.
  # If you change this key, all old signed cookies will become invalid!
  # Make sure the secret is at least 30 characters and all random,
  # no regular words or you'll be exposed to dictionary attacks.

  # If this is an open source project, DO NOT commit your secret to source
  # control. Load it from ENV or a file that is git ignored (File.read)
  Enki::Application.config.secret_token    = ENV['SECRET_KEY_BASE'] || "sometoken"
  Enki::Application.config.secret_key_base = ENV['SECRET_KEY_BASE'] || "sometoken"
end
