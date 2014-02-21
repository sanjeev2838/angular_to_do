Todo::Application.routes.draw do
  get "home/index"

  namespace :api, defaults: {format: :json} do
      resources :task_lists, only: [:index] do
      resources :tasks, only: [:index, :create, :update, :destroy]
    end
  end

  devise_for :users
  root :to => "home#index"
end
