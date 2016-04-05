class TrendController < ApplicationController
  before_action :authenticate_user!

  def new
    # puts current_user.id
    @x = Expense.where(year: Date.today.year).where(user_id: current_user.id).group(:expense_category_id).order('sum_projvalue desc').sum(:projvalue)
    @total = 0
    @x.each { |y|
      @total = @total + y[1]
    }

    @chartarray = []

    x = Expense.select(:year, :month, 'sum_actvalue').group(:year, :month).order(:year, :month).sum(:actvalue)
    x.each {|y|
      @chartarray.append([[y[0][0].to_i, y[0][1].to_i], y[1].to_i])
    }

    @expensedropdown = []
    # for the expense bar chart
    z = Expense.select(:expense_category_id).where(year: Date.today.year).where(user_id: current_user.id).group(:expense_category_id)
    z.each {|a|
      @expensedropdown.append([a.expense_category_name, a.expense_category_id])
    }


    respond_to do |format|
      format.js
    end
  end

  def barchart
    selected_expense = params[:expensedropdown]
    @selected_expense = ExpenseCategory.find(selected_expense).exp_name

    q = Expense.where(user_id: current_user.id).where(expense_category_id: selected_category).where(year: Date.today.year).group(:month).order(:month).sum(:actvalue)

    @months = []
    @values = []

    q.each {|x|
      @months.append(x[0])
      @values.append(x[1])
    }
  end

end
