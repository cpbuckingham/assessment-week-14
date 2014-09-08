class DashboardController < ApplicationController
  def index
    @patients = Patient.order(:first_name, :last_name)
    @med = Medication.order(:name)
  end
end