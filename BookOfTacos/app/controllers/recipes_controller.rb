class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
    @recipes = Recipe.search(params[:search])
    @ingredients = Ingredient.all
  end

  def show
    @ingredients = @recipe.ingredients
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    params[:ingredients].split(", ").each do |ing|
      ingredient = Ingredient.find_or_create_by(name: ing)
      ingredient.recipe = @recipe
    end
    if @recipe.valid?
      redirect_to @recipe
    else
      flash[:error] = @recipe.errors.full_messages
      redirect_to new_recipe_path
    end
  end

  def edit
  end

  def update
    @recipe.update(recipe_params)
    if @recipe.valid?
      redirect_to @recipe
    else
      flash[:error] = @recipe.errors.full_messages
      redirect_to edit_recipe_path
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def find_recipe
    @recipe = Recipe.find_by(id: params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :like_count, :rating, :search)
  end


end
