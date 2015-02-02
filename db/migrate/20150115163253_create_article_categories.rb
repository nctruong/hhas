class CreateArticleCategories < ActiveRecord::Migration
  def change
    create_table :article_categories do |t|
      t.string :title
      t.text :description
      t.references :article_category, index: true
      t.integer :weight
      t.boolean :visible

      t.timestamps null: false
    end
    add_foreign_key :article_categories, :article_categories
  end
end
