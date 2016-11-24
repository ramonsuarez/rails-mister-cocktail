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
      @dose = @cocktail.doses.build(dose_params)
      @dose.save
      redirect_to cocktail_path(@cocktail)
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
