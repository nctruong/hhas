class Menu < ActiveRecord::Base
  belongs_to :menu
  rails_admin do 
    navigation_label "Front-End"
    #configure :thumb, :jcrop
	end
end
