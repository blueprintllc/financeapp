# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_FinanceApp_session',
  :secret      => '7b6ecf943edb19c3cfb5c643827c3b5e8523d59c2f8a6697aab175bb5427c825621f482fecb3ba45f6910b07b3a5c2bc21463eef43a919e867ddc5fea8136d2e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
