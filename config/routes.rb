Rails.application.routes.draw do
  root              'pages#welcome' # can change this later
  get 'about'   =>  'pages#about'
  get 'contact' =>  'pages#contact'
end
