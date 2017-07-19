class ExpenseMailer < ApplicationMailer
  RECEPIENTS = ['test@gmail.com', 'testerino@gmail.com']

  def notify_recepients(expense)
    @expense = expense
    @event = @expense.event

    mail(from: PIVORAK_EMAIL,
         subject: I18n.t("mailers.expense_mailer.notify_recepients.subject", event: @event.title),
         to: RECEPIENTS) do |format|
        format.html { render 'mailers/expenses_mailer/notify_recepients' }
    end
  end
end