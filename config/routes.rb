Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lights, only: [:index] do
        collection do
          put :toggle
          put :keep_alive
        end
      end
    end
  end
end
