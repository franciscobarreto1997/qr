Rails.application.routes.draw do
  post '/qrcodes', to: "qrcodes#generate"
  get '/qrcodes', to: "qrcodes#generate"


  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
