Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :running_sessions
    collection do
      get 'find'
    end
  end
end
