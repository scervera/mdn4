class VisitorContact < ApplicationMailer
  include Roadie::Rails::Automatic

  def message_email(visitor)
  	attachments.inline['mdn_logo_bk.jpg'] = File.read('app/assets/images/logos/mdn_logo_bk.jpg')
    @visitor = visitor
    mail(to: @visitor.email, subject: 'Thank you for your message!')
  end

  def send_message_email(visitor)
  	attachments.inline['mdn_logo_bk.jpg'] = File.read('app/assets/images/logos/mdn_logo_bk.jpg')
    @visitor = visitor
    mail(to: 'info@mensdiscipleshipnetwork.com', subject: 'Great Servant of Christ! You have received a message from a cherished visitor to our website.')
  end

end
