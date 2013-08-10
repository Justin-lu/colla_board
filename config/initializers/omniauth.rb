if Rails.env.production?
  yammer_key = "ef9Flw6en2Hf8Ke9CIXwBg"
  yammer_secret = "c1W4jesP5uPKFlVxLkSIRN0H2KNw4uzeiEXlCzDHc"
else
  yammer_key = ENV['YAMMER_KEY'] || "6GnaT68KbaYBTH9e3il6w"
  yammer_secret = ENV['YAMMER_SECRET'] || "adH7PyMVDwVNhhBXkBsoGgOiL6F4kXCY0WtaQenr0"
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :yammer, yammer_key, yammer_secret
  if Rails.env.development?
    provider :developer, fields: [:name, :email], uid_field: :email
  end
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
