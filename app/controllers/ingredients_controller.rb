class IngredientsController < ApplicationController
  def index
    @ingredients = Cocktail.all
  end
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to cocktails_path
    else
      render 'new'
    end
  end

  private

  def ingredient_params
    # => Whitelisting
    params.require(:ingredient).permit(:name)
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
