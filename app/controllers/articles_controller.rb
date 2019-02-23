class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.persisted?
      redirect_to root_path, notice: 'Your article has been created'
    else
      flash[:error] = "Your Article could not be saved"
      render :new
    end
  end

  private 

  def article_params
    params.require(:article).permit(:title, :content)
  end
end