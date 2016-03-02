class BudgetsController < ApplicationController
before_action :authenticate_user!
  def display
    @incomes = Income.all
    @expenses = Expense.all
    @bills = Bill.all
  end

end
