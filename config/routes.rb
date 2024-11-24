Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      post 'map/cutout', to: 'map#cutout'
      get 'map/wsdl', to: 'map#wsdl'
    end
  end

end
