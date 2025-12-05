# config/initializers/smtp.rb
Rails.application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:              ENV.fetch("SMTP_ADDRESS", "smtp.eu.mailgun.org"),
    port:                 ENV.fetch("SMTP_PORT", 587).to_i,
    user_name:            ENV.fetch("SMTP_USERNAME"),
    password:             ENV.fetch("SMTP_PASSWORD"),
    authentication:       :plain,
    enable_starttls_auto: true,
    domain:               ENV.fetch("SMTP_DOMAIN", "mg.marjala.no"),
    open_timeout:         5,
    read_timeout:         5
  }

  # Make sure we actually see errors instead of silent failures
  config.action_mailer.raise_delivery_errors = true
end
