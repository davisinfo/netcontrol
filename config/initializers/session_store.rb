# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_netcontrol_session',
  :secret      => '120700ff11ab60f1145e4ce259d84fe3917289a6f81febcc8638b1a8764688e67eb259def40bf64d6e16357b7ee6caf61bd83d4ee1cee33322a84aec6d9e5b4e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
