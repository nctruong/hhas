class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.string :title
      t.text :description
      t.boolean :visible, default: true

      t.timestamps null: false
    end
  end
end
