AlbatrossBackEnd::Application.routes.draw do

namespace :api , defaults: {format: :json} do
    namespace :v1 do
      resources :register, only: [:create]
    end
  end
end
