SmRc223::Application.routes.draw do
  resources :orders do
    resources :addresses
  end
  root 'orders#index'
end
