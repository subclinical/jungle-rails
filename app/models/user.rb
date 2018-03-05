class User < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_secure_password
  has_many :reviews

  def self.authenticate_with_credentials (email, password)
    user = User.find_by(email: email.downcase)
    if user and user.authenticate(password)
      return true
    else
      return false
    end
  end

end
