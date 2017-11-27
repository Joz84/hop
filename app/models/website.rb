class Website < ApplicationRecord
  before_create :set_default

  belongs_to :user
  belongs_to :template

  has_attachment :background_image
  has_attachment :profile_image

  private

  def set_default
    self.title = 'John Doe'
    self.description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempus, nisi ut commodo tincidunt, dui nisl fringilla leo, ut luctus velit diam id sem. Donec ipsum diam, sagittis sed auctor in, laoreet vitae mauris. Proin venenatis gravida tincidunt. Pellentesque vel facilisis lorem. Proin ut ipsum id velit bibendum scelerisque.'
    self.facebook_url = 'zuck'
    self.twitter_url = 'jack'
    self.email = 'john@doe.com'
  end

end
