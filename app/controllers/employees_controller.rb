class EmployeesController < ApplicationController

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.where(visible: true).order(weight: :asc, created_at: :asc)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name, :title, :thumb, :description, :content, :weight, :isHomePage, :visible)
    end
end
