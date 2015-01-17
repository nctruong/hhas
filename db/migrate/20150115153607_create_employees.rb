class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :thumb
      t.text :description
      t.text :content
      t.integer :weight, default: 0
      t.boolean :isHomePage, default: false
      t.boolean :visible, default: true

      t.timestamps null: false
    end
  end
end
