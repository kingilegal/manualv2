Rails.application.routes.draw do
  resources :users
  resources :guardians
  resources :reports
  resources :students
  resources :teachers
  resources :grades
  resources :institutes
  resources :districts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
