class ServiceCategory < ActiveRecord::Base
	has_many :services
	rails_admin do
	    navigation_label "Service"
	    #configure :cover, :jcrop
	    edit do
	      field :title
	      field :description
	      field :visible do
	        default_value true
	      end
	    end
	end
end
