class ConfirmationMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'

  def confirmation_email(order)
    @order = order
    @line_items = order.line_items
    mail(to: @order.email, subject: 'Confirmation of order: ' + @order.id.to_s)
  end
end
