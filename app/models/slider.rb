class Slider < ActiveRecord::Base
  mount_uploader :image, SliderUploader
  rails_admin do 
    navigation_label "Front-End"
    #configure :thumb, :jcrop
	end
end
