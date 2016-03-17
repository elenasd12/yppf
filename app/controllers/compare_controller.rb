class CompareController < ApplicationController
  def new
    #
    # puts params.inspect
    # @month1 = Expense.where("month LIKE ?", "%#{params[:post]}").group(:expensetype).sum(:projvalue)
    array = Expense.select(:month).group(:month)

    @months = []

    array.each { |a|

      e = [a.month]
      @months.append(e)
    }
    @compare = ""

    # @month1 = Course.order(:name).where("name LIKE ? and subject_name LIKE ?", "%#{params[:course]}", "%%#{params[:label]}%")

  end

  def create
    @month1 = Expense.where("month LIKE ?", "%#{params[:month1select]}").group(:expensetype).sum(:projvalue)
    @month2 = Expense.where("month LIKE ?", "%#{params[:month2select]}").group(:expensetype).sum(:projvalue)


  end

end
#
# <%= label_tag 'Month 2' %><br>
# <%= collection_select(:expense, nil, Expense.select(:month, :year).group(:month, :year), :id, :combined_value)  %>
