# config/initializers/smtp.rb
Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              ENV.fetch("SMTP_ADDRESS"),
    port:                 ENV.fetch("SMTP_PORT", 465),
    user_name:            ENV.fetch("SMTP_USERNAME"),
    password:             ENV.fetch("SMTP_PASSWORD"),
    authentication:       :plain,
    enable_starttls_auto: true,
    domain:               ENV["SMTP_DOMAIN"]
  }
end
