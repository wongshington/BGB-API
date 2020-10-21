class User < ApplicationRecord
    validates :email, :password_digest, :session_token, presence: true
    validates :email, uniqueness: true
    validates :password, length: { minimum: 8 }, allow_nil: true
    
    after_initialize :ensure_session_token
    attr_reader :password

    has_many :tasks

    def self.validate_credentials(email, password)
        errors = []
        if email.empty?
            errors << 'Enter a valid email address'
        end

        if password.empty?
            errors << 'Please enter a password'
        end

        user = User.find_by_credentials(email, password)
        if !user
            errors << "Incorrect email or password. Please try again."
        end
        errors
    end
    
    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        return nil unless user && user.is_password?(password)
        user
    end
    
    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end
    
    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end
    
    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
        self.save!
        self.session_token
    end
    
      private
    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64
    end
end
