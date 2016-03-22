class CompareController < ApplicationController
  before_action :authenticate_user!

  def new
    array = Expense.select(:month, :year).group(:month)
    @months = []
    array.each { |a|
      e = [MONTHS[a.month]+' '+a.year.to_s, a.month]
      @months.append(e)
    }
    @compare = ""
  end

  def create
    # the months selected by the user
    @month1select = params[:month1select]
    @month2select = params[:month2select]

    # queries for initial pie chart and bar chart with expenses for each month
    @month1expenses = Expense.where(month: @month1select.to_i).group(:expensetype).sum(:projvalue)
    @month2expenses = Expense.where(month: @month2select.to_i).group(:expensetype).sum(:projvalue)
    @category = ""

    # all the expense types for both months
    alltypes = Expense.where(:month => [@month1select, @month2select]).group(:expensetype)
    @selectedtypes = []
    # values for these expenses for each month
    @month1values = []
    @month2values = []

    alltypes.each { |t|
      # adding expense types to global array
      x = t.expensetype
      @selectedtypes.append(x)

      # queries to find values for expense type x
      month1query = Expense.where(month: @month1select.to_i).where(expensetype: x)
      month2query = Expense.where(month: @month2select.to_i).where(expensetype: x)

      # if no expense type x for month 1
      if month1query.empty?
        @month1values.append(0)
      else
        month1query.each { |a|
          # value of expense type x in month1
          @month1values.append(a.projvalue.to_f)
        }
      end

      # if no expense type x for month 2
      if month2query.empty?
        @month2values.append(0)
      else
        month2query.each { |a|
          # value of expense type x in month2
          @month2values.append(a.projvalue.to_f)
        }
      end

    }

    # month 1 and 2 in string (ex. January) instead of ints
    @month1name = MONTHS[@month1select.to_i]
    @month2name = MONTHS[@month2select.to_i]

  end

  def category

  end

  MONTHS = [0, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']


end
