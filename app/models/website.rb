class Website < ApplicationRecord
  belongs_to :user
  belongs_to :template

  has attachement :background_image
  has attachement :profile_image
end
