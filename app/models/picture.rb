class Picture < ActiveRecord::Base
  belongs_to :album
  mount_uploader :file, PictureUploader
  rails_admin do 
    navigation_label "Galleries"
    parent Album
    
    #configure :thumb, :jcrop
    edit do
      field :title
      field :description
      field :file
      field :album
      field :visible do
        default_value true
      end
    end
	end
end
