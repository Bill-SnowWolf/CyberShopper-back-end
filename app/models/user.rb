class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation, :roles, :rating, :markets
  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :username, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true
  validates :password_confirmation, presence: true
end
