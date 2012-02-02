Datafut::Application.routes.draw do
	resources :pages
	resources :equipos
	resources :jugadores
	root :to => "pages#home" 
	match '/equipos' => "equipos#show"
	match '/jugadores' => "jugadores#show"
end
