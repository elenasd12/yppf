class BudgetsController < ApplicationController
before_action :authenticate_user!
  def display
    @incomes = Income.where(user_id: current_user.id).where(month:Date.today.month).where(year:Date.today.year)
    @expenses = Expense.where(user_id: current_user.id).where(month:Date.today.month).where(year:Date.today.year)
    @bills = Bill.where(user_id: current_user.id).where(month:Date.today.month).where(year:Date.today.year)
    @get_month_year = "#{MONTHS[Date.today.month]} #{Date.today.year}"
  end

  MONTHS = [0, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

end
