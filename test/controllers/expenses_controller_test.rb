# require 'test_helper'
#
# class ExpensesControllerTest < ActionController::TestCase
#   setup do
#     @expense = expenses(:one)
#   end
#
#   test "should get index" do
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:expenses)
#   end
#
#   test "should get new" do
#     get :new
#     assert_response :success
#   end
#
#   test "should create expense" do
#     assert_difference('Expense.count') do
#       post :create, expense: { actvalue: @expense.actvalue, expenseid: @expense.expenseid, frequency: @expense.frequency, month: @expense.month, percent: @expense.percent, projvalue: @expense.projvalue, type: @expense.type, user_id: @expense.user_id, year: @expense.year }
#     end
#
#     assert_redirected_to expense_path(assigns(:expense))
#   end
#
#   test "should show expense" do
#     get :show, id: @expense
#     assert_response :success
#   end
#
#   test "should get edit" do
#     get :edit, id: @expense
#     assert_response :success
#   end
#
#   test "should update expense" do
#     patch :update, id: @expense, expense: { actvalue: @expense.actvalue, expenseid: @expense.expenseid, frequency: @expense.frequency, month: @expense.month, percent: @expense.percent, projvalue: @expense.projvalue, type: @expense.type, user_id: @expense.user_id, year: @expense.year }
#     assert_redirected_to expense_path(assigns(:expense))
#   end
#
#   test "should destroy expense" do
#     assert_difference('Expense.count', -1) do
#       delete :destroy, id: @expense
#     end
#
#     assert_redirected_to expenses_path
#   end
# end
