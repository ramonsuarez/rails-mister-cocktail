# class IngredientsController < ApplicationController
#   def show
#   end

#   def new
#     @ingredient = Ingredient.new
#   end

# def create
#       @ingredient = @cocktail.ingredients.build(ingredient_params)
#       @ingredient.save
#       redirect_to cocktail_path(@cocktail)

#   private

#   def ingredient_params
#     params.require(:ingredient).permit(:name)
#   end

#   def set_ingredient
#     @ingredient = Ingredient.find(params[:cocktail_id])
#   end
# end
