Rails.application.routes.draw do
  # devise_for :users
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    omniauth_callbacks: 'overrides/omniauth_callbacks'
  }
  resources :sheets
end
