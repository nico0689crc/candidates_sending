class PointOfContact < ApplicationRecord
    #--------------------------------------------- RELATIONSHIPS

    #--------------------------------------------- VALIDATIONS
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :role, presence: true
    validates :company_name, presence: true
end
