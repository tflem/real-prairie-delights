# frozen_string_literal: true

class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]

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

  def show; end

  def edit; end

  def update
    if @recipe.update(recipe_params)
      flash[:notice] = 'Your recipe has been updated.'
      redirect_to @recipe
    else
      flash[:alert] = 'Your recipe has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @recipe.destroy

    flash[:notice] = 'Your recipe has been deleted.'
    redirect_to recipes_path
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = 'The recipe you were looking for could not be found.'
    redirect_to recipes_path
  end

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :serving_size, :ingredients, :directions)
  end
end
