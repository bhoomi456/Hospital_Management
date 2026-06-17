class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def show
  end

  def edit
  end

  private
  def patients_params
    params.require(:patient).permit(:name, :age, :gender)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end