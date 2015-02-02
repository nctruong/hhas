class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
