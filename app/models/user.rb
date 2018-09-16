class User < ApplicationRecord
  has_one :website

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
