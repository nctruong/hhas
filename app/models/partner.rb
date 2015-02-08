class Partner < ActiveRecord::Base
	mount_uploader :logo, PartnerUploader
	rails_admin do 
    	navigation_label "Content"
	end
end