module V1
  class ArticlesController < ApplicationController
    before_action :set_article,  only: [:show, :update, :destroy]

    # GET: /articles
    def index
      @articles = Article.all

      if (@articles.length > 0)
        render json: @articles
      else
        render json: "ERROR"
      end
    end

    # GET: /articles/:id
    def show
      render json: @article
    end

    # POST: /articles
    def create
      @article = Article.create!(article_params)
      render json: @article
    end

    # PUT: /articles/:id
    def update
      @article.update(article_params)
      render json: @article
    end

    # DELETE: /articles/:id
    def destroy
      @article.destroy
      render json: "deleted!"
    end

    def article_params
      params.permit(:title, :content, :hidden)
    end

    def set_article
      @article = Article.find(params[:id])
    end
  end
end