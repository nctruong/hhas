class ArticleCategoriesController < ApplicationController
  before_action :set_article_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @article_categories = ArticleCategory.all
    respond_with(@article_categories)
  end

  def show
    respond_with(@article_category)
  end

  def new
    @article_category = ArticleCategory.new
    respond_with(@article_category)
  end

  def edit
  end

  def create
    @article_category = ArticleCategory.new(article_category_params)
    @article_category.save
    respond_with(@article_category)
  end

  def update
    @article_category.update(article_category_params)
    respond_with(@article_category)
  end

  def destroy
    @article_category.destroy
    respond_with(@article_category)
  end

  private
    def set_article_category
      @article_category = ArticleCategory.find(params[:id])
    end

    def article_category_params
      params.require(:article_category).permit(:title, :description, :article_category_id, :weight, :visible)
    end
end
