class ArticlesController < ApplicationController

  def create
    article = Article.new(article_params)
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def article_params
    params.require(:article).permit(:title,:description,:body)
  end

end
