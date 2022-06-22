class CreateJobsCandidatesPipelines < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs_candidates_pipelines do |t|
      t.references :jobs_candidate, null: false, foreign_key: true
      t.references :pipeline_step, null: false, foreign_key: true
      t.boolean :completed, default: false
      t.text :feedback

      t.timestamps
    end
  end
end
