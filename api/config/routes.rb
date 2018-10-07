Rails.application.routes.draw do
  devise_for :users

  namespace :v1 do
    post '/contact' => 'mailer#contact'
    
    resources :sessions, only: [:create, :destroy]
  end
end
