# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Events::Application.config.secret_key_base = 'a50fe02c96841fc0e72313a5ac5f6a833dd882e94bde92c605b672afe74276a9df6749f3b65ce809801eddc50af21dcf33f9416825e3d663b0a493efdfbc0c29'
