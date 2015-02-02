class ArticleCategory < ActiveRecord::Base
  belongs_to :article_category
  rails_admin do 
    navigation_label "News"
    #configure :cover, :jcrop
    edit do
      field :title
      field :description
      field :article_category do
        label "Parent"
        help "Default is root"
      end
      field :weight do
        default_value 0
      end
      field :visible do
        default_value true
      end
    end
	end
end
