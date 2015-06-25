Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  authenticated :user do
    root 'notes#index', as: "authenticated"
  end
  root 'welcome#index'
  resources :notes
end
