class ArticlesController < ApplicationController
  layout "profile_layout", only: [:show]
  before_action :authenticate_user!, :except => [:show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    if (params[:categories]) then
      @articles = Article.where(published: true, category_id: params[:categories])
    else 
      @articles = Article.where(published: true, category_id: current_user.categories.pluck(:id))
    end
    
    @categories = Article.where(published: true, category_id: current_user.categories.pluck(:id)).map(&:category).compact.uniq
  end

  def show
    @profile = @article.category.user.profile
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:name, :caption, :content, :published, :thumbnail, :category_id)
    end
end
