Rails.application.routes.draw do
  resources :subjects
  resources :students
  resources :groups
  resources :teachers
  root    'groups#index'
  get     '/students',   to: 'students#index'
  get     '/teachers',   to: 'teachers#index'
  get     '/subjects',   to: 'subjects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
