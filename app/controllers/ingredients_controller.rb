class IngredientsController < ApplicationController

before_action :set_ingredient, only: [:destroy]


def index
  @ingredients = Ingredient.all
end

def new
  @ingredient = Ingredient.new
end

def create
  @ingredient = Ingredient.new(ingredient_params)
  @ingredient.save
  redirect_to cocktails_path
end

def destroy
  @ingredient.destroy
  redirect_to cocktails_path
end

private

def ingredient_params
  params.require(:ingredient).permit(:name)
end

def set_ingredient
  @ingredient = Ingredient.find(params[:id])
end

end
