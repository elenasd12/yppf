class TrendController < ApplicationController
  before_action :authenticate_user!

  def new
    # puts current_user.id
    @x = Expense.where(year: Date.today.year).where(user_id: current_user.id).group(:expense_category_name).order('sum_projvalue desc').sum(:projvalue)
    @total = 0
    @x.each { |y|
      @total = @total + y[1]
    }
  end
end
