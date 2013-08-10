if Rails.env.production?
  yammer_key = "oSm2QlHLEYTFeteJHCh1Q"
  yammer_secret = "ZCTZImcaD1BpcQw5APfCttpdVi1SYRevFuNBe8xXcE"
else
  yammer_key = ENV['YAMMER_KEY'] || "oSm2QlHLEYTFeteJHCh1Q"
  yammer_secret = ENV['YAMMER_SECRET'] || "ZCTZImcaD1BpcQw5APfCttpdVi1SYRevFuNBe8xXcE"
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
