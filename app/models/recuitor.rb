class Recuitor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         mount_uploader :logo, AttachmentUploader

  has_many :requirements
 validates :company_name, :contact_no, :address, :pan_no, presence: true
end
