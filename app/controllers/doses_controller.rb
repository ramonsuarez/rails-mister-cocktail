class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :destroy]

  def show
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose = @cocktail.doses.new(dose_params)
      if @dose.valid?
        @dose.save
        redirect_to cocktail_path(@cocktail)
      else
        render "cocktails/new"
      end
  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
