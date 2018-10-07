class V1::MailerController < ApplicationController
  def contact
    ContactMailer.contact_email(email_params).deliver_now

    render json: { message: 'Email was sent!', email: params['email'] }, status: :ok
  end

  private

  def email_params
    params.permit(
      :name,
      :email,
      :phone,
      :services,
      :message
    )
  end
end
