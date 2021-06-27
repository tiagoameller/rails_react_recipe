Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes, except: [:new, :edit, :update]
      # get 'recipes/index'
      # post 'recipes/create'
      # get 'recipes/show/:id', to: 'recipes#show'
      # delete 'recipes/destroy/:id', to: 'recipes#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
