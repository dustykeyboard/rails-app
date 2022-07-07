class User < ApplicationRecord
  has_many :articles

  validates :name, :email, presence: true, uniqueness: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
end
