class MedicationsController < ApplicationController
  def index
    @med = Medication.order(:name)

  end
def show
  @med = Medication.find(params[:id])
  end

def new
  @med = Medication.new
end

def create
  @med = Medication.new(name: params[:medication][:name])
  if @med.save
    flash[:notice] = "Med added successfully!"
    redirect_to patient_medications_path
  else
    @med.errors
    render :new
  end
end
end







