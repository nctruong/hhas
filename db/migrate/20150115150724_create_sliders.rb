class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :title
      t.text :description
      t.string :image
      t.boolean :visible, default: true
      t.integer :weight, default: 0

      t.timestamps null: false
    end
  end
end
