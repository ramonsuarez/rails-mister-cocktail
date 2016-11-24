class DosesController < ApplicationController
  def show
  end

  def new
    @dose = Dose.new
  end

  def create
      @dose = @cocktail.doses.build(dose_params)
      @dose.save
      redirect_to cocktail_path(@cocktail)

  private

  def dose_params
    params.require(:dose).permit(:content)
  end

  def set_dose
    @dose = Dose.find(params[:cocktail_id])
  end
end
