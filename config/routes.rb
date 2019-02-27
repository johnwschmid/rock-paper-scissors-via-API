Rails.application.routes.draw do
  root 'pages#home'
  get '/throw', to: 'pages#throw'
end