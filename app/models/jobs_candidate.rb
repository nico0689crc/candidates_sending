class JobsCandidate < ApplicationRecord
  enum status: [:inactive, :active]
  
  #--------------------------------------------- RELATIONSHIPS
  belongs_to :job
  belongs_to :candidate
  has_many :jobs_candidates_pipeline

  #--------------------------------------------- CALLBACK
  after_save :add_pipelines_to_jobs_candidates
  
  #--------------------------------------------- METHODS
  def status=(value)
    write_attribute :status, value.to_s.gsub(/\D/, '').to_i
  end

  def add_pipelines_to_jobs_candidates
    self.job.pipeline_steps.map do |pipeline_step|
      JobsCandidatesPipeline.create({
        jobs_candidate_id: self.id,
        pipeline_step_id: pipeline_step.id 
      })
    end
  end
end
