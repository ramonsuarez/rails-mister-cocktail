class CocktailsController < ApplicationController
  def index         # GET /cocktails
    @cocktails = Cocktail.all
  end

  def show          # GET /cocktails/:id
  end

  def new           # GET /cocktails/new
    @cocktail = Cocktail.new
  end

  def create        # POST /cocktails
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def edit          # GET /cocktails/:id/edit
  end

  def update        # PATCH /cocktails/:id
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy       # DELETE /cocktails/:id
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
