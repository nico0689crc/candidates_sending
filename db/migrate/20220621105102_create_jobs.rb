class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :status, default: 1
      t.string :ats_link
      t.references :point_of_contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
