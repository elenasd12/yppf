class CompareController < ApplicationController
  def new

    puts params.inspect
    @month1 = Expense.where("month LIKE ?", "%#{params[:post]}").group(:expensetype).sum(:projvalue)
    # @month1 = Course.order(:name).where("name LIKE ? and subject_name LIKE ?", "%#{params[:course]}", "%%#{params[:label]}%")

  end

end
#
# <%= label_tag 'Month 2' %><br>
# <%= collection_select(:expense, nil, Expense.select(:month, :year).group(:month, :year), :id, :combined_value)  %>
