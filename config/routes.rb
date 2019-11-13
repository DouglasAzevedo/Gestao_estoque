Rails.application.routes.draw do
  resources :movimentos
  resources :operacaos
  resources :produtos
  resources :unidades
  resources :gprods
  resources :pessoas
  resources :enderecos
  resources :cidades
  resources :estados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
