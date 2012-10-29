Dvoraktutorial::Application.routes.draw do
  match '/auth/:provider/callback' => 'sessions#create', via: :get

  controller :sessions do
    get 'login' => :new
    delete 'logout' => :destroy
  end

  resources :users

  resources :lessons do
    post :check
  end

  root to: 'home#index'
end
