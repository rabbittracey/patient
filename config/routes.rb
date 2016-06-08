Rails.application.routes.draw do

  resources :patient_profile_allergies
  resources :intake
  resources :patient_profile_procedures_hospitolizations



  get 'page/home'

  get 'page/contact'

  get 'page/about'

  get 'user/new'

  get 'user/edit'
  get 'intake/index'

  devise_for :users, :controllers => {:registrations => "registrations"}
  get 'welcome/index'
  get '/patients/:id', to: 'patients#home', as: 'patient_home'


  get '/providers/:id', to: 'providers#home', as: 'provider_home'

  root 'page#home'






  #resources :patients
  #resources :providers
  resources :patient_surveys
  resources :patient_immunizations

  resources :patient_medications

end
