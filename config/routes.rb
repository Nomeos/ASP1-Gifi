Rails.application.routes.draw do
  resources :person_promotions
  resources :promotions
  resources :lecture_promotions
  devise_for :person, controllers: {
    sessions: 'person/sessions',
    registrations: 'person/registrations'
  }

  get 'lectures/myLectures'
  get 'grades/myGrades'


  # change the path to the sign in page
=begin
  devise_scope :person do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
=end
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
  root "home#index"

  resources :semesters
  resources :lectures
end
