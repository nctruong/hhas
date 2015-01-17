class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :datetime
      t.boolean :isFlexible, default: false
      t.text :message
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
