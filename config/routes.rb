Rails.application.routes.draw do
  resources :emilies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'emilies#showcase'

  get 'index'=>'emilies#index'


end
