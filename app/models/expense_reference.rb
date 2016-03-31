class ExpenseReference < ActiveRecord::Base
  has_many :expenses, dependent: :destroy
  belongs_to :user
  validates :ref_name, presence: true
  validates :ref_value, presence: true
  validates :expense_category_id, presence: true
  validates :ref_month, presence: true
  validates :ref_year, presence: true
  validates :ref_type, presence: true
  #before_destroy :exp_ref_with_child_cannot_be_destroyed
  
  def expense_category_name
  ExpenseCategory.find(expense_category_id).exp_name
  end
  
 
  #def exp_ref_with_child_cannot_be_destroyed
   # if self.expenses.size>0
    #  errors.add(:base,"This expense can not be deleted! There are records associated with this expense!")
    #end
  #end
end
