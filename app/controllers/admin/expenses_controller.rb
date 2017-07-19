module Admin
  class ExpensesController < BaseController
    helper_method :expense

    def new

    end

    def create
      Expense::Create.call(expense, expense_params)
    end

    private

    def expense
      @expense = Expense.new
    end

    def expense_params
      params.require(:expense).permit(:event_id, :attachment)
    end
  end
end
