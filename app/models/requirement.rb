class Requirement < ApplicationRecord
  belongs_to :recuitor
  mount_uploader :cv, AttachmentUploader
end
