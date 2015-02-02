class ServiceCategoriesController < ApplicationController
  before_action :set_service_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_categories = ServiceCategory.all
    respond_with(@service_categories)
  end

  def show
    respond_with(@service_category)
  end

  def new
    @service_category = ServiceCategory.new
    respond_with(@service_category)
  end

  def edit
  end

  def create
    @service_category = ServiceCategory.new(service_category_params)
    @service_category.save
    respond_with(@service_category)
  end

  def update
    @service_category.update(service_category_params)
    respond_with(@service_category)
  end

  def destroy
    @service_category.destroy
    respond_with(@service_category)
  end

  private
    def set_service_category
      @service_category = ServiceCategory.find(params[:id])
    end

    def service_category_params
      params.require(:service_category).permit(:title, :description, :visible)
    end
end
