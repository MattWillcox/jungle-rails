# Preview all emails at http://localhost:3000/rails/mailers/confirmation_mailer
class ConfirmationMailerPreview < ActionMailer::Preview
  def confirmation_email
    ConfirmationMailer.confirmation_email(Order.last)
  end
end
