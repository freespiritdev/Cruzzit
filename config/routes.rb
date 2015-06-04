Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update, :show, :index]

  resources :topics do
    resources :posts, except: [:index], controller: 'topics/posts'
  end

  resources :posts, only: [:index] do
    resources :comments, only: [:create, :destroy]
  end
  get 'welcome/contact'

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
