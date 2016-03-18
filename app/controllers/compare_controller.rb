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
    month1select = params[:month1select]
    month2select = params[:month2select]
    @month1 = Expense.where("month LIKE ?", "%#{month1select}").group(:expensetype).sum(:projvalue)
    @month2 = Expense.where("month LIKE ?", "%#{month2select}").group(:expensetype).sum(:projvalue)
    @category = ""

    alltypes = Expense.where(:month => [month1select, month2select]).group(:expensetype)
    @selectedtypes = []
    alltypes.each { |t|
      x = t.expensetype
      @selectedtypes.append(x)
    }


  end

  def category

  end

end
