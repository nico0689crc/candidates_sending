class Candidate < ApplicationRecord
  #--------------------------------------------- RELATIONSHIPS

  #--------------------------------------------- VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
