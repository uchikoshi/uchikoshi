# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_uchikoshi_session',
  :secret => '37b323034e57ea90d6a17d0331bf9c2b6e0dbacac3435f2c202a20b228558757e3edbe61537c1f05b5e7773929b16f9974e4415ffe80d9c4f6ba5323cbddc5ef'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
