class AddCategoryReferenceToService < ActiveRecord::Migration
  def change
    add_reference :services, :service_category, index: true
    add_foreign_key :services, :service_categories
  end
end
