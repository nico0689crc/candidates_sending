class JobsCandidatesPipeline < ApplicationRecord
  #--------------------------------------------- RELATIONSHIPS
  belongs_to :jobs_candidate
  belongs_to :pipeline_step
end
