Rails.application.routes.draw do
  devise_for :users
  post '/contact' => 'mailer#contact'
end
