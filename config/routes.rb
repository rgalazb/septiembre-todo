Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  resources :todos do
    member { post 'tasks/complete' }
    member { post 'tasks/uncomplete' }
  end

  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
