class Album < ActiveRecord::Base
  has_many :pictures
  mount_uploader :cover, PictureUploader
  rails_admin do 
    navigation_label "Galleries"
    #configure :thumb, :jcrop
    edit do
      field :title
      field :description
      field :cover
      field :pictures      
      field :visible do
        default_value true
      end
      field :isHomePage do
        label "Show in Homepage"
      end
    end
	end
end
