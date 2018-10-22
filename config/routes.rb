Rails.application.routes.draw do
  resources :credits
  resources :semesters
  resources :students
  devise_for :users
  devise_for :docentes
  resources :teachers
  resources :schools
  resources :schedules
  resources :subjects
  resources :notes
  resources :programs
 
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
