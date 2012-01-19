Datafut::Application.routes.draw do
	resources :pages
	resources :equipos
	root :to => "pages#home" 
	match '/equipos' => "equipos#show"
end
