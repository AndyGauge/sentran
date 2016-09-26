Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :categories, :only => [:show, :index] do
    resources :products, :only => [:show, :index] do
      resources :parts,  :only => [:index]
    end
  end
  root 'pages#index'
end
