Rails.application.routes.draw do
  devise_for :offices
  devise_for :helpers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tops#index'
end
