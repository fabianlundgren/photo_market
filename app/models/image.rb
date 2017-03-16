class Image < ApplicationRecord
  has_attached_file :file,
                    storage: :s3,
                    s3_credentials: Proc.new{|a| a.instance.s3_credentials }

  validates_attachment :file,
                       content_type:
                           {content_type: %w(image/jpg image/jpeg image/png image/gif)}
 def s3_credentials
   {
     bucket: 'photo-market',
     access_key_id: ENV['AWS_ACCESS_KEY'],
     secret_access_key: ENV['AWS_SECRET_KEY'],
     s3_region: ENV['AWS_REGION'],
     url: ':s3_domain_url',
     s3_host_name: 's3-us-west-2.amazonaws.com'
   }
 end
end
