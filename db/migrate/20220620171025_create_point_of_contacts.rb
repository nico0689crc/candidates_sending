class CreatePointOfContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :point_of_contacts do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :profile_picture_url
      t.boolean :status, default: true
      t.string :role, null: false
      t.string :company_name, null: false
      t.string :contact_email, null: false
      t.string :contact_whatsapp
      t.string :contact_linked_in

      t.timestamps
    end
  end
end
