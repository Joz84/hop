class Website < ApplicationRecord
  belongs_to :user
  belongs_to :template

  has_attachment :background_image
  has_attachment :profile_image

end
