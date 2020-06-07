class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(post_params)
  end

  private
  def post_params
    params.require(:recipe).permit(
    :name
    )
  end
end
