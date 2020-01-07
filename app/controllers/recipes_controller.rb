class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
    @restaurant = Recipe.create(recipes_params)
    redirect_to "/recipes"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def update
    Recipe.find(params[:id]).update(recipes_params)
    redirect_to "/recipes/#{params[:id]}"
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end
end

private

def recipes_params
  params.require(:recipe).permit(:title, :description, :image)
end
