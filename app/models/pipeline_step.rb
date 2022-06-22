class PipelineStep < ApplicationRecord
  #--------------------------------------------- RELATIONSHIPS
    belongs_to :job
    has_many :jobs_candidates_pipelines
  #--------------------------------------------- VALIDATIONS
    validates :name, presence: true, length: { minimum: 10 }
    validates :description, presence: true, length: { minimum: 100 }
    validates :teaser, presence: true, length: { minimum: 20 }
end
