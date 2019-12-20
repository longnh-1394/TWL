Rails.application.routes.draw do
  resources :users, only: [:new] do
    resources :steps, only: [:show, :update]
  end
end
