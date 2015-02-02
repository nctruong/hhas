class ServicesController < ApplicationController

  # GET /services
  # GET /services.json
  def index
    @services   = Service.where(visible: true)
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @services = Service.where(visible: true)
    @service = Service.find(params[:id])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:title, :description, :content, :thumb, :oldprice, :newprice, :isHomePage, :visible)
    end
end
