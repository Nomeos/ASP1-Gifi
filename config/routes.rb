Rails.application.routes.draw do
  devise_for :people
  # get 'semesters/index'
  # get 'semesters/show'
  # get 'semesters/edit'
  # get 'semesters/new'
  # get 'grades/index'
  # get 'grades/show'
  # get 'grades/edit'
  # get 'grades/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "semesters#index"

  resources :semesters
  resources :grades
end
