Rails.application.routes.draw do
  
  namespace :v1 do
    post '/contact' => 'mailer#contact'
  end
end
