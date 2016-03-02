class Bill < ActiveRecord::Base
  belongs_to :user
  validates :expenseid, :day_month, :month, presence: true
  validates :day_month, numericality: {greater_than_or_equal_to: 1}
  validates :month, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 12}

  validates :year,
    presence: true,
    inclusion: {
      in: 1900..Date.today.year,
      message: "should be between 1900 and today's year"
    },
    format: {
      with: /(19|20)\d{2}/i,
      message: "should be a four-digit year"
    }

end