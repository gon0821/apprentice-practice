class ArticlesController < ApplicationController

  def create
    @article = Article.new(article_params)
    @article.slug = @article.title.parameterize
    if @article.save
      render json: {
        article: {
          slug: @article.slug,
          title: @article.title,
          description: @article.description,
          body: @article.body,
          createdAt: @article.created_at,
          updatedAt: @article.updated_at
        }
      }, status: :created
    else
      render json: { errors: @article.errors}, status: :unprocessable_entity
    end
  end

  def show
    @article = Article.find_by(slug: params[:slug])
    if @article
      render json: {
          article: {
            slug: @article.slug,
            title: @article.title,
            description: @article.description,
            body: @article.body,
            createdAt: @article.created_at,
            updatedAt: @article.updated_at
          }
        }
    else
      render json: { errors: 'Article not found'}, status: :not_found
    end
  end

  def update
    @article = Article.find_by(slug: params[:slug])
    @article.update(article_params)
    @article.slug = @article.title.parameterize
    if @article.save
      render json: {
        article: {
          slug: @article.slug,
          title: @article.title,
          description: @article.description,
          body: @article.body,
          createdAt: @article.created_at,
          updatedAt: @article.updated_at
        }
        }, status: :created
      else
        render json: { errors: @article.errors}, status: :unprocessable_entity
      end
    end

    def destroy
      @article = Article.find_by(slug: params[:slug])
      if @article
        @article.destroy
        head :no_content
      else
        render json: { errors: 'Article not found'}, status: :not_found
    end
  end

  private
  def article_params
    params.require(:article).permit(:title,:description,:body)
  end

end
