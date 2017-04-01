Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lights, only: [:index] do
        collection do
          get :toggle
          get :view
        end
      end
    end
  end
end
