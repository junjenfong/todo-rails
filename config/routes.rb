Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
  			resources :todos
		end
	end

	root to: "home#index"
	post "refresh", controller: :refresh, action: :create
	post "signin", controller: :signin, action: :create
	post "singup", controller: :signup, action: :create 
	delete "signin", controller: :signin, action: :destroy 
	
end
