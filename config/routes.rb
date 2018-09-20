Rails.application.routes.draw do
  get 'bienvenido/index'
  get 'bienvenido/modulos/monitorias'
  resources :articulos
  root 'bienvenido#index'
end
