class Event < ApplicationRecord
  validates :title, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :begin_at, presence: true
  validates :end_at, presence: true
end
