class Website < ApplicationRecord
  RESERVED_KEYWORDS = ['build']

  before_create :set_default

  belongs_to :user
  belongs_to :template

  has_attachment :background_image
  has_attachment :profile_image
  has_attachment :banner_background

  validate do
    errors.add 'URL is a reserved keyword' if url.to_s.in? RESERVED_KEYWORDS
  end

  def host(domain: ENV['APPLICATION_DOMAIN'])
    'http://' + [url, domain].join('.')
  end

  private

  def set_default
    self.title = 'Dorothée'
    self.description = 'After making my beginnings at the theater, I was successful thanks to television in the 80s-90s where I was found on Recré A2 and Le Club Dorothée. Otherwise I love to sing and my real name is Frédérique Hoschedé.'
    self.facebook_url = 'dorothee'
    self.twitter_url = '@dorothee'
    self.email = 'dorothee@gmail.com'
  end
end
