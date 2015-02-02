class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.text :description
      t.boolean :visible, default: true
      t.references :menu, index: true
      t.integer :weight, default: 0

      t.timestamps null: false
    end
    add_foreign_key :menus, :menus
  end
end
