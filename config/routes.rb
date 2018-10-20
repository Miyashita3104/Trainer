Rails.application.routes.draw do
  root "trainer_knowledges#index"
  resources :trainer_knowledges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
