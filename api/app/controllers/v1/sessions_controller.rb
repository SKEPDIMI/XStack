class V1::SessionsController < ApplicationController
  def create
    @user = User.where(email: params[:email]).first

    if @user.valid_password? params[:password]
      
      # create token for the user

      render json: { message: 'Authenticated user', user: @user.as_json(only: [:email]) }, status: :created
    else
      render json: { message: 'Invalid password' }, status: :unauthorized
    end
  end

  def destroy

  end
end
