Rails.application.routes.draw do

  
  resources :profiles do
    resources :original_questions
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    root :to => "users/sessions#new"
  end


  resources :users,only: [:index,:show,:edit,:update] do
    resources :questions
    resources :answers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
