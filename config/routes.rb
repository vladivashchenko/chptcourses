Rails.application.routes.draw do
  resources :marks
  resources :subjects
  resources :students
  resources :groups
  resources :teachers
  resources :users
  root   'static_pages#home'
  get    '/help',        to: 'static_pages#help'
  get    '/about',       to: 'static_pages#about'
  get    '/contact',     to: 'static_pages#contact'
  get    '/signup',      to: 'users#new'
  post   '/signup',      to: 'users#create'
  get    '/login',       to: 'sessions#new'
  post   '/login',       to: 'sessions#create'
  delete '/logout',      to: 'sessions#destroy'
  get     '/groups',     to: 'groups#index'
  get     '/students',   to: 'students#index'
  get     '/teachers',   to: 'teachers#index'
  get     '/subjects',   to: 'subjects#index'
  resources :account_activations, only: [:edit]
  put 'deactivate/:id(.:format)', :to => 'users#deactivate', :as => :deactivate_user
  put 'activate/:id(.:format)', :to => 'users#activate', :as => :activate_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
