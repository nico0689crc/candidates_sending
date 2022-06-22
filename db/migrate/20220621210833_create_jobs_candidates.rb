class CreateJobsCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs_candidates do |t|
      t.references :job, null: false, foreign_key: true
      t.references :candidate, null: false, foreign_key: true
      t.integer :status, default: 1
      t.boolean :notifications, default: true
      t.string :token, null: false, uniqueness: true

      t.timestamps
    end
  end
end
