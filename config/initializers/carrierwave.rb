require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  # AWS S3 configs
  # ENV -> 리눅스 환경변수, 설동민 pc에 있음
  #
  config.fog_provider    = 'fog/aws' # required
  config.fog_credentials = {
    provider:              'AWS', # required
    aws_access_key_id:     ENV['AWS_KEY'],        # required unless using use_iam_profile
    aws_secret_access_key: ENV['AWS_SECRET_KEY'], # required unless using use_iam_profile
    use_iam_profile:       true,                       # optional, defaults to false
    region:                'ap-northeast-2',           # optional, defaults to 'us-east-1'
  }
  config.fog_directory = 'kpu-likelion-skaska' # required
end
