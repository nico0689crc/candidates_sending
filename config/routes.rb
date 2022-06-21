Rails.application.routes.draw do
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

namespace :admin do
    namespace :api, defaults: {format: :json} do
      namespace :v1 do
        resources :recruiters
        resources :jobs
        resources :pipeline_steps
        resources :candidates
      end
    end

    resources :recruiters
    resources :jobs
    resources :pipeline_steps
    resources :candidates
end

# Defines the root path route ("/")
# root "articles#index"
end
