OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1073919005975485', '62d989c5282b1a4c559a96129e1c6503', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end