Rails.application.routes.draw do
  devise_for :users
  post '/contact' => 'mailer#contact'

  namespace :v1 do
    resources :sessions, only: [:create, :destroy]
  end
end
