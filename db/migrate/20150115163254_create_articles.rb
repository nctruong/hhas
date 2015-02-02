class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :content
      t.string :thumb
      t.datetime :publishdate
      t.references :article_category, index: true
      t.boolean :visible, default: true
      t.boolean :isHomePage, default: false

      t.timestamps null: false
    end
    add_foreign_key :articles, :article_categories
  end
end
