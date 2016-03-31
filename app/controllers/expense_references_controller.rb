class ExpenseReferencesController < ApplicationController
  before_action :set_expense_ref, only: [:destroy,:edit]
before_action :authenticate_user!
 helper_method :expense_category_options
 
 
  def index
    @expense_refs_once=ExpenseReference.where(user_id: current_user.id,ref_type: 1).order(created_at: :desc)
    @expense_refs_every=ExpenseReference.where(user_id: current_user.id,ref_type: 2).order(created_at: :desc)
    @destroy_warning_msg="All history associated with this expense will be removed. Are you sure?"
  end
  
  def edit
    
  end
  
  def new
    @expense_ref = ExpenseReference.new
  end
  
  def create
    @expense_ref = ExpenseReference.new(expense_reference_params)
    @expense_ref.user_id=current_user.id
    @expense_ref.ref_status=1

    respond_to do |format|
      if @expense_ref.save
        format.html { redirect_to expense_references_path, notice: 'Expense was successfully created.' }
        
      else
        format.html { render :new }
       
      end
    end
  end
  
  def destroy
    @expense_ref.destroy
    respond_to do |format|
      format.html { redirect_to expense_references_url, notice: 'Expense and all associated records were successfully removed.' }
      format.json { head :no_content }
    end
  end
  def expense_category_options
    ExpenseCategory.where("(user_id="+current_user.id.to_s+" or user_id is null) and exp_type=1").order(:exp_name).pluck(:exp_name,:id)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_ref
      @expense_ref = ExpenseReference.find(params[:id])
    end
    
    def expense_reference_params
      params.require(:expense_reference).permit(:ref_name,:expense_category_id,:ref_value,:ref_type,:ref_month, :ref_year)
    end
  
end