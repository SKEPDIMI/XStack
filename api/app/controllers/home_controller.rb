class HomeController < ApplicationController
  def index
    if current_user.present?
      render json: "Hey, #{current_user.email}"
    else
      render json: "Hello"
    end
  end
end
