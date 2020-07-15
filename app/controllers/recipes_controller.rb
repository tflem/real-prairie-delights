# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = 'Your recipe has been created.'
      redirect_to @recipe
    else
      flash.now[:alert] = 'Your recipe has not been created.'
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :serving_size, :ingredients, :directions)
  end
end
