class Template < ApplicationRecord
  has_many :websites

  validates :name, presence: true
  validates :slug, presence: true
end
