class JobsCandidatesPipelineSerializer < ActiveModel::Serializer
  attributes :id, :completed, :feedback, :pipeline_step
end
