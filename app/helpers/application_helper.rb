module ApplicationHelper
  def getConfig(key)
    Rails.cache.fetch("config_#{key}", expires_in: 1.year) do
      if Appconfig.where(key: key).first.present?
        Appconfig.where(key: key).first.value
      else
        nil
      end      
    end
  end
  
  def getSocialIcons
    Rails.cache.fetch("social_icons", expires_in: 1.year) do
      SocialIcon.where(visible: true)
    end
  end
end
