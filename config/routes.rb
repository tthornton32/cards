Rails.application.routes.draw do

  resources :projects do
    resources :cards, except: [:show, :index] do
    	collection { post :sort }
    end
  end

  # root 'welcome#index'

end
