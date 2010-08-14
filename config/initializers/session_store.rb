# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_egopad_session',
  :secret      => '402a8aeadc0348e250d46b524d739ee511059d3e073b8838af781367f53f8a93473e4d02be76f57bd4e6cdbe95c79ef790e5c476378a1ba3fdeb9e709afd5456'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
