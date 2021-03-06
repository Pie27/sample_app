if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY'],
      :region => ENV['S3_REGION']
    #  heroku config:set S3_REGION=us-west-2
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end

#heroku config:set S3_ACCESS_KEY=AKIAIXTKZDV4T7GJEXCQ
#heroku config:set S3_ACCESS_KEY=8xmGiA7GW4hlAGKlxIL2zBdWKtVyB39AwnnzJyt6
#heroku config:set S3_BUCKET=ptmrails
