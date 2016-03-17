class CompareController < ApplicationController
  def new
    array = Expense.select(:month).group(:month)
    @months = []
    array.each { |a|
      e = [a.month]
      @months.append(e)
    }
    @compare = ""
  end

  def create
    @month1 = Expense.where("month LIKE ?", "%#{params[:month1select]}").group(:expensetype).sum(:projvalue)
    @month2 = Expense.where("month LIKE ?", "%#{params[:month2select]}").group(:expensetype).sum(:projvalue)
    @category = ""

  end

  def category

  end

end
