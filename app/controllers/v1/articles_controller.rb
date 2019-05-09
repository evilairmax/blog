module V1
  class ArticlesController < ApplicationController
    before_action :set_article,  only: [:show, :update, :destroy]

    # GET: /articles
    def index
      @articles = Article.all
      render json: @articles
    end

    # GET: /articles/:id
    def show
      render json: @article
    end

    # POST: /articles
    def create
      render json: {status: 'error', code: 403, message: 'Permission denied'}
    end

    # PUT: /articles/:id
    def update
      render json: {status: 'error', code: 403, message: 'Permission denied'}
    end

    # DELETE: /articles/:id
    def destroy
      render json: {status: 'error', code: 403, message: 'Permission denied'}
    end

    def article_params
      params.permit(:title, :content, :hidden)
    end

    def set_article
      @article = Article.find(params[:id])
    end
  end
end