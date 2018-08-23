require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  # AWS S3 configs
  # ENV -> secrets.yml에 키등록.
  #     -> 반드시 .gitignore에 secrets.yml 무시 설정이 되어있는지 확인
  #     -> 후에 git rm -r --cached .    실행 후, 다시 git add 할것
  #     -> 반드시 위 사항을 적용해야하며, 깃허브에 키 올라가면 잡으러감
  #
  secrets = Rails.application.secrets
  config.fog_provider    = 'fog/aws' # required
  config.fog_credentials = {
    provider:              'AWS', # required
    aws_access_key_id:     secrets.AWS_ACCESS_KEY_ID,     # required unless using use_iam_profile
    aws_secret_access_key: secrets.AWS_SECRET_ACCESS_KEY, # required unless using use_iam_profile
    region:                secrets.ARTIFACTS_REGION       # optional, defaults to 'us-east-1'
  }
  config.fog_directory = secrets.ARTIFACTS_BUCKET # required
end
