class CreatePipelineSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :pipeline_steps do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.text :teaser, null: false
      t.string :action_button_label
      t.string :action_button_url
      t.integer :order
      t.integer :status, default: 1
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
