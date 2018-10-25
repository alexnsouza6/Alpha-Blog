# Categories Controller is composed by a simple CRUD of category
class CategoriesController < ApplicationController
  before_action :require_admin, only: %i[new create]

  def index
    @categories = Category.paginate(page: params[:page], per_page: 3)
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = 'The Category has been successfully created!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles.paginate(page: params[:page],
                                                     per_page: 3)
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def require_admin
    if !logged_in? || (logged_in? && !current_user.admin?)
      flash[:danger] = 'You have to be an Admin to perform this action.'
      redirect_to root_path
    end
  end
end
