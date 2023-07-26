class User < ApplicationRecord
    has_secure_password
  
    validates :username, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true,length: {minimum:6}
    validates :password_confirmation, presence: true,confirmation: true
  
    before_create :generate_authentication_token!
  
    def generate_authentication_token!
      self.token = SecureRandom.hex(32)
    end
  

    def reset_authentication_token!
      self.token = nil
    end
  
    def valid_authentication_token?(token)
      self.token == token
    end
  end
  