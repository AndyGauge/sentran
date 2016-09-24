Rails.application.routes.draw do
  resources :categories, :only => [:show, :index] do
    resources :products, :only => [:show, :index]
  end
end
