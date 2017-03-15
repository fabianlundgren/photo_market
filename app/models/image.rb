class Image < ApplicationRecord
  has_attached_file :file

  validates_attachment :file,
                       content_type:
                           {content_type: %w(image/jpg image/jpeg image/png image/gif)}

end