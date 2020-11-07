# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

user_name = Rails.application.credentials.send_grid_client[:sendgrid_username]
password = Rails.application.credentials.send_grid_client[:sendgrid_password]
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => user_name,
  :password => password,
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}
