Rails.application.routes.draw do

  resources :students
  devise_for :users
  resources :schedules
  resources :groups
  resources :semesters
  resources :notes
  resources :schools
  resources :programs
  resources :subjects
 
#declarar rutas	
  get 'bienvenido/index'
  get 'bienvenido/monitorias'
  get 'bienvenido/cursos'
  get 'bienvenido/nosotros'
  get 'bienvenido/contactenos'
  get 'bienvenido/Entrar_cursos'
  get 'bienvenido/monitorias_usuario'
#empezar localhost
  root 'bienvenido#index'
end
