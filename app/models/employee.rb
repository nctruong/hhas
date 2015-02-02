class Employee < ActiveRecord::Base
  mount_uploader :thumb, EmployeeUploader
  rails_admin do
    navigation_label "Content"
    #configure :thumb, :jcrop
    edit do
      field :name
      field :title
      field :description
      field :content, :ck_editor
      field :thumb
      field :weight do
        default_value 0
      end
      field :visible do
        default_value true
      end
      field :isHomePage do
        label "Show in Homepage"
      end
    end
	end
end
