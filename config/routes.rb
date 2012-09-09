Dvoraktutorial::Application.routes.draw do
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users

  resources :lessons do
    post :check
  end

  root to: 'lessons#index'
end
