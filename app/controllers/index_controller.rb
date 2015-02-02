class IndexController < ApplicationController
  def index
    @sliders      = Slider.where(visible: true).order(weight: :asc)
    @opentimes    = Opentime.order(created_at: :asc)
    @aboutus      = Article.first
    @services     = Service.where(isHomePage: true, visible:true).order(updated_at: :desc).limit(3)
    @articles     = Article.where(isHomePage: true, visible:true).order(updated_at: :desc).limit(2)
    @employees    = Employee.where(isHomePage: true, visible:true).order(updated_at: :desc)
    @testimonials = Testimonial.where(visible: true).order(updated_at: :desc).limit(5)
    @pictures     = Picture.joins(:album).where(visible: true).where(albums: {visible: true, isHomePage: true}).order(updated_at: :desc).limit(27)
  end
end