class CreateAppconfigs < ActiveRecord::Migration
  def change
    create_table :appconfigs do |t|
      t.string :key
      t.string :value

      t.timestamps null: false
    end
  end
end
