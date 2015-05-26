Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :topics do
    resources :posts, except: [:index]
  end

  get 'welcome/contact'

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
