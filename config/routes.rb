Papabear::Application.routes.draw do

  resources :field_of_origins do
    resources :hives
  end
  resources :hives do
    resources :honeys
  end

  root :to => 'field_of_origins#index'
end
