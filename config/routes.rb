Rails.application.routes.draw do
  resources :categories, :only => [:show, :index] do
    resources :products, :only => [:show, :index] do
      resources :parts,  :only => [:index]
    end
  end
end
