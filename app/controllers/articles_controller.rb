class ArticlesController < ApplicationController

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.where(visible: true, publishdate: 1.year.ago..DateTime.now).order(created_at: :desc).page(params[:page]).per(4)
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :description, :content, :thumb, :publishdate, :article_category_id, :visible, :isHomePage)
    end
end
