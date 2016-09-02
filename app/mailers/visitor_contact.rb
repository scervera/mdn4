class VisitorContact < ApplicationMailer
  def message_email(visitor)
    @visitor = visitor
    mail(to: @visitor.email, subject: 'Thank you for your message!')
  end
end
