class BudgetsController < ApplicationController
before_action :authenticate_user!
helper_method :expenses_by_category
  def display
    @incomes = Income.where(user_id: current_user.id).where(month:Date.today.month).where(year:Date.today.year)
    @expenses = Expense.where(user_id: current_user.id).where(month:Date.today.month).where(year:Date.today.year)
    @bills = Bill.where(user_id: current_user.id).where(month:Date.today.month).where(year:Date.today.year)
    @get_month_year = "#{MONTHS[Date.today.month]} #{Date.today.year}"
    @get_day = "#{Date.today.day}"
    # @get_month = 1
  end

  def expenses_by_category(category_id)

    Expense.where(user_id: current_user.id,month:Date.today.month,year:Date.today.year,expense_category_id: category_id)

  end

  MONTHS = [0, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

end
