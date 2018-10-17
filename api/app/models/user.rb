require 'devise_token_auth'

class User < ApplicationRecord
  mount_uploader :image, UserImageUploader
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  # User Img Validation
  validates_integrity_of  :image
  validates_processing_of :image
 
  private
    def image_size_validation
      errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
    end
end
