class BudgetsController < ApplicationController

  before_action :authenticate_user!
    include BudgetsHelper

  def display    
    
    initialize_incomes
    @get_month_year = "#{MONTHS[Date.today.month]} #{Date.today.year}"
    @get_day = "#{Date.today.day}"
    @income_chart_data=[['Firefox',100],['IE',56.33],['Chrome',24.03],['Safari',4.77],['Opera',0.91],{name: 'Proprietary or Undetectable',y: 0.2,dataLabels: {enabled: false}}]
  end

  

  MONTHS = [0, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

end
