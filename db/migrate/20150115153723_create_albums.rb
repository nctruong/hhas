class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      t.string :cover
      t.boolean :isHomePage, default: false
      t.boolean :visible, default: true

      t.timestamps null: false
    end
  end
end
