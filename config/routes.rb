Project3HappyHour::Application.routes.draw do
  root 'application#index'

  get 'users/' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user
  post 'users' => 'users#create', as: :create_user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'

  get 'sessions/new' => 'sessions#new', as: :new_session
  post 'sessions' => 'sessions#create'
  delete 'sessions' => 'sessions#destroy'
  
  scope 'api', defaults: {format: :json} do
    resources :businesses, only: [:index, :create, :update, :destroy]
  end

  get 'ratings/' => 'ratings#index'

end
