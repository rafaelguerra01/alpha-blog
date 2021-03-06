class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def show
    #byebug
    #@article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    #byebug
    #@article = Article.find(params[:id])
  end


  def create
    #render plain: params[:article]
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)
    #render plain: @article.inspect  #show article objects
    if @article.save
        flash[:notice] = "Article was created successfully."
        redirect_to  @article
    else
        render 'new'
    end
  end

  def update
    #@article = Article.find(params[:id])
    if @article.update(article_params)
        flash[:notice] = "Article updated successfully!"
        redirect_to @article
    else
        render 'edit'
    end
  end

  def destroy
    #byebug
    #@article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
