class ExpenseReferencesController < ApplicationController
  def index
    @expense_refs=ExpenseReference.where(user_id: current_user).order(:created_at)
  end
  
end