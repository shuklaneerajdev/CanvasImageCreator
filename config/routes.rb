Rails.application.routes.draw do
  resources :imagequotes
  get 'home/default'
  root "home#default"
  post "/SaveCard"=>"home#save"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
