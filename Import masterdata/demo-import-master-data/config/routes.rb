Rails.application.routes.draw do
  root to: 'students#index'

  resources :students do
    collection {post :import}
  end
end
