Rails.application.routes.draw do
 
  root "users#index"

  resources :users, only: [:index, :show, :edit, :destroy] do
    resources :tasks, only: [:index, :create, :edit, :destroy]
  end

end
