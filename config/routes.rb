Rails.application.routes.draw do

	root 'application#index'
	
  namespace :api, defaults: {format: :json} do
    resources :tasks
  end
end
