Rails.application.routes.draw do
  resources :pipeline_steps
  
  
  
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
namespace :admin do
    namespace :api, defaults: {format: :json} do
      namespace :v1 do
        resources :point_of_contacts
        resources :jobs
        resources :pipeline_steps
      end
    end

    resources :point_of_contacts
    resources :jobs
    resources :pipeline_steps
end


  # Defines the root path route ("/")
  # root "articles#index"
end
