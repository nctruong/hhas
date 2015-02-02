class Service < ActiveRecord::Base
  belongs_to :service_category
  mount_uploader :thumb, ServiceUploader
  rails_admin do
    navigation_label "Service"
    parent ServiceCategory
    #configure :thumb, :jcrop
    edit do
      field :title
      field :description
      field :content, :ck_editor
      field :thumb
      field :oldprice do
        label "Old price"
      end
      field :newprice do
        label "New price"
      end
      field :service_category
      field :visible do
        default_value true
      end
      field :isHomePage do
        label "Show in Homepage"
      end
    end
	end
end
