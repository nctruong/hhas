class CreateSocialIcons < ActiveRecord::Migration
  def change
    create_table :social_icons do |t|
      t.string :title
      t.string :clss
      t.string :link, default: '#'
      t.boolean :visible, defailt: true

      t.timestamps null: false
    end
  end
end
