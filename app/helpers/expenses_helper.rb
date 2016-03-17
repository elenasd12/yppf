module ExpensesHelper
  def get_progress_type i
    if i > 75
      "progress-bar-danger"
    elsif i >50
      "progress-bar-warning"
    else
      "progress-bar-success"
    end
  end

  def get_total_expenditure_message(month, year)
    if @expenses[0] == nil
      return "You have not uploaded sufficient data to make calculations for this month"
    else
      projected = @expenses[0].projvalue_sum(month, year)
      if projected == 0
        return "You have not uploaded sufficient data to make calculations for this month"
      else
        return "Total Expenditure - #{get_total_expenditure(Date.today.month, Date.today.year)}% of monthly budget used"
      end
    end
  end

  def get_total_expenditure(month, year)
    if @expenses[0] == nil
      return 0
    else
      projected = @expenses[0].projvalue_sum(month, year)
      actual = @expenses[0].actvalue_sum(month, year)
      if projected == 0
        return 0
      else
        return ((actual/projected) * 100).to_i
      end
    end
  end

  def get_actvalue(month, year)
    if @expenses[0] == nil
      return 0
    else
      return @expenses[0].actvalue_sum(month,year)
    end
  end


  def get_projvalue(month, year)
    if @expenses[0] == nil
      return 0
    else
      return @expenses[0].projvalue_sum(today.year)
    end
  end

end
