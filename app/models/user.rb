class User < ApplicationRecord
    has_secure_password
    has_many :jobs

    #Validations
    validates_presence_of :name, :email, :password_digest
    validates :email, uniqueness: true
    validates :name, uniqueness: true
end
