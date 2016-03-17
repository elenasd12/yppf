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
    projected = @expenses[0].projvalue_sum(month, year)
    if projected == 0
      return "You have not uploaded sufficient data to make calculations for this month"
    else
      return "Total Expenditure - #{get_total_expenditure(Date.today.month, Date.today.year)}% of monthly budget used"
    end
  end

  def get_total_expenditure(month, year)
    projected = @expenses[0].projvalue_sum(month, year)
    actual = @expenses[0].actvalue_sum(month, year)
    if projected == 0
      return 0
    else
      return ((actual/projected) * 100).to_i
  end
  end
end
