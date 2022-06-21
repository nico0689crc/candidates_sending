class Job < ApplicationRecord
  #--------------------------------------------- RELATIONSHIPS
    belongs_to :point_of_contact
  #--------------------------------------------- VALIDATIONS
    validates :title, presence: true, length: { minimum: 10 }
    validates :description, presence: true, length: { minimum: 100 }
    validates :ats_link, presence: true
end