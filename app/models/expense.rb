class Expense < ActiveRecord::Base
  belongs_to :user
  # validate positive fields
  validates :projvalue, :actvalue, :percent, :month, numericality: {greater_than_or_equal_to: 0}
  # validate valid year
  validates :year,
    presence: true,
    inclusion: { in: 1900..Date.today.year,
      message: "should be between 1900 and today's year"},
    format: {
      #regex to check that format is valid
      with: /(19|20)\d{2}/i,
      message: "should be in proper format"
    }
end
