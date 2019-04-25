Rails.application.routes.draw do
  resources :blogs
  #resources :portafolios, except: [:show] -> quiero ver todas las rutas de portafolio excepto 'show'
  #get 'portafolio/:id', to: 'portafolios#show', as: 'portafolio_show' ->se crea nuestra propia ruta de show, ya no se ve 'portafolios/:id' sino 'portafolio/:id' sin S,ahora cambia el prefijo a portafolio_show

  #get 'pages/home'  <-reemplaza-> groot to 'pages#home'
  #get 'pages/about' <-reemplaza-> get 'about', to:'pages#about' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'blogs#index'
  #manda directamente a la página principal de la aplicación. 
  #test de comentario
  resources :blogs do
  	member do
  		get:toggle_status
  	end
  end

end
