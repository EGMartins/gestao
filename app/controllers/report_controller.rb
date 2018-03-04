class ReportController < ApplicationController
  def index_report
  end
  
  def expense_view
    
  end
  
  def recipe_view
    @recip
  end
  
  def sum_recipe
  end
  @recip = Recipe.all
  
  private
  def report_params
    params.require(:report).permit(:primary_parameter, :second_parameter)
  end
end