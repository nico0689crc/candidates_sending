class PipelineStepSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :teaser, :action_button_label, :action_button_url, :order
  has_one :job
end
