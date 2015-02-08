class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :title
      t.text :description
      t.string :logo
      t.boolean :visible, default: true
      t.boolean :isHomePage

      t.timestamps null: false
    end
  end
end
