class ArticlesController < ApplicationController
  def index 
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new

  end

  def edit
    @article = Article.find(params[:id])
  end

  def create 
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path(@article)
    else
      render 'new'
    end
  end

  def update
    
  end

  private

  def article_params
    params.require(:article).permit(:title,:content)
  end
end
