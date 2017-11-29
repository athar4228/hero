Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json } do
    #TODO show v1 in the url
    scope module: :v1 do
      resources :heroes, only: [:index, :show] do
        member do
          get :abilities
        end
      end
      resources :abilities, only: [:index, :show]
    end
  end
end
