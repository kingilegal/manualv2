Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :users
  resources :guardians
  resources :reports
  get 'home/index'
  root 'home#index'
  resources :students
  resources :teachers
  resources :grades
  resources :institutes
  resources :districts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
