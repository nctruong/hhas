class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :thumb
      t.integer :oldprice
      t.integer :newprice
      t.boolean :isHomePage, default: false
      t.boolean :visible, default: true

      t.timestamps null: false
    end
  end
end
