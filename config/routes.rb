Rails.application.routes.draw do
  root 'tops#index'
  
  devise_for :offices
  devise_for :helpers, :controllers => { 
    # registrations_controller.rbを有効にする
    :registrations => 'helpers/registrations',
    :sessions => 'helpers/sessions',
    :omniauth_callbacks => 'helpers/omniauth_callbacks'
    
    
  }
  
  
  devise_scope :helper do
    
    get "sign_in", :to => 'helpers/sessions#new'
    get "sign_out", :to => 'helpers/sessions#destroy'
    
    # views/helpers/registrations内に作成したconfirm.html.erbとcomplete.html.erbもルーティングに追加
    post 'helpers/sign_up/confirm', to: 'helpers/registrations#confirm'
    post 'helpers/sign_up/complete', to: 'helpers/registrations#complete'
  end
  
end
