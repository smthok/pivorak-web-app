class Expense
  class Create < ApplicationService
    def initialize(expense, params)
      @expense = expense
      @params = params

    end

    def call
      expense.assign_attributes(params)
      return unless expense.valid?

      expense.save
    end

    private

    attr_reader :expense, :params
  end
end