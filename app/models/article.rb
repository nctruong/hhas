class Article < ActiveRecord::Base
  belongs_to :article_category
  mount_uploader :thumb, ArticleUploader
  rails_admin do 
    navigation_label "News"
    parent ArticleCategory
    #configure :thumb, :jcrop
    edit do
      field :title
      field :description
      field :content, :ck_editor
      field :thumb
      field :publishdate
      field :article_category
      field :visible do
        default_value true
      end
      field :isHomePage do
        label "Show in Homepage"
      end
    end
	end
end
