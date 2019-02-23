class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

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
      redirect_to root_path, notice: 'Article was successfully created.'
    else
      flash[:error] = ""
      render :new
    end
  end

  private 

  def article_params
    params.require(:article).permit(:title, :content)
  end
end