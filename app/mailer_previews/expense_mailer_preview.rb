class ExpenseMailerPreview
  def notify_recepients
    ExpenseMailer.notify_recepients(Expense.first)
  end
end