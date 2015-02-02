class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.text :description
      t.string :file
      t.references :album, index: true
      t.boolean :visible, default: true

      t.timestamps null: false
    end
    add_foreign_key :pictures, :albums
  end
end
