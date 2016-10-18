Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  mount_ember_app :frontend, to: "/"
end
