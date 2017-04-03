Rails.application.routes.draw do
  resources :subjects
  resources :students
  resources :groups
  resources :teachers
  resources :users
  root    'groups#index'
  get     '/students',   to: 'students#index'
  get     '/teachers',   to: 'teachers#index'
  get     '/subjects',   to: 'subjects#index'
  get     'signup',      to: 'users#new'
  get     'login',      to: 'sessions#new'
  post    'login',      to: 'sessions#create'
  delete  'logout',     to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
