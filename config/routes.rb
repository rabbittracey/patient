Rails.application.routes.draw do

  get 'page/home'

  get 'page/contact'

  get 'page/about'

  get 'user/new'

  get 'user/edit'

  devise_for :users, :controllers => {:registrations => "registrations"}
  get 'welcome/index'


  root 'page#home'
  get 'page/about'
  get 'page/home'
  get 'page/contact'




  resources :patients
  resources :providers
  resources :patient_surveys
  resources :patient_immunizations

  resources :patient_medications
  resources :patient_profile_procedures_hospitolizations
end
