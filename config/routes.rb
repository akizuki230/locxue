Locxue::Application.routes.draw do
  get "admin/index"
  scope "admin" do
  resources :proyectos_users
  resources :proyectos
  resources :eventos
  resources :foros
  resources :articulos
  resources :actas
  resources :integrantes
end

  root :to => "home#index"
    get "home/blog"
  get "home/actas"
  get "home/contacto"
  get "home/estatutos"
  get "home/foro"
  get "home/integrantes"
  get "home/proyectos"
  get "home/proyecto"
  get "home/integrante"
  get "home/eventos"
  get "home/acta"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end