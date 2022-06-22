class JobsCandidate < ApplicationRecord
  enum status: [:inactive, :active]
  
  #--------------------------------------------- RELATIONSHIPS
  belongs_to :job
  belongs_to :candidate
  
  #--------------------------------------------- METHODS
  def status=(value)
    write_attribute :status, value.to_s.gsub(/\D/, '').to_i
  end
end
