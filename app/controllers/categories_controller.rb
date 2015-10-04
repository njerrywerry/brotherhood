class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
  @category = Category.new(category_params)
  if @category.save
    redirect_to reports_path
  else
    render "new"
  end
end

private

def category_params
  params.require(:category).permit(:description)
end

def set_category
  @category = Category.find(params[:id])
end

end
