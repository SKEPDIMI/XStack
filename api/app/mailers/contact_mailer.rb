class ContactMailer < ApplicationMailer
  default from: ENV['GMAIL_USERNAME']

  def contact_email(data)
    @name = data['name']
    @email = data['email']
    @phone = data['phone']
    @message = data['message']
    @services = data['services']

    mail(to: @email, subject: "Contact email from #{@name}")
  end
end
