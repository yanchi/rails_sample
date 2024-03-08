class CreateAdminContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_contacts do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
