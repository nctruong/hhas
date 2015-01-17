class CreateOpentimes < ActiveRecord::Migration
  def change
    create_table :opentimes do |t|
      t.string :title
      t.time :open
      t.time :close
      t.boolean :isClosed, default: false

      t.timestamps null: false
    end
  end
end
