class ExpenseMailer < ApplicationMailer
  RECEPIENTS = ['test@gmail.com', 'testerino@gmail.com']

  def notify_recepients(expense)
    @expense = expense

    mail( from: PIVORAK_EMAIL,
          subject: I18n.t("mailers.expense_mailer.notify_recepients.subject"),
          to: RECEPIENTS)
  end
end