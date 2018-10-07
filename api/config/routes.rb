Rails.application.routes.draw do
  post '/contact' => 'mailer#contact'
end
