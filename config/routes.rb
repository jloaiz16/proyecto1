Rails.application.routes.draw do
  #scope '/proyecto1' do
    # Defino pagina inicial
    root 'welcome#index'
    # Defino rutas de las localizaciones
    resources :locations
    # Defino ruta de peticion
    get 'welcome/index'
    # Rutas para usuarios
    get '/signup' => 'users#new'
    post '/users' => 'users#create'
    # Rutas para sesiones
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
  #end
end
