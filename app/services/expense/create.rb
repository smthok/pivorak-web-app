class Expense
  class Create < ApplicationService
    def initialize(expense, params)
      @expense = expense
      @params = params
      binding.pry
    end

    def call
      return unless expense.valid?

      expense.save
    end

    private

    attr_reader :expense, :params
  end
end