class Teacher < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :fname, :lname, :email, presence: true
    validates :email, uniqueness: true, format: { with: /@veritaspress.com\z/, message: "You must use your veritas email"}
    validates :password, presence: true, length: { minimum: 9 }
    has_secure_password

    
end
