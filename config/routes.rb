Rails.application.routes.draw do
  get "books", to: "books#index"
  post "books", to: "books#create"
  get "books/new", to: "books#new", as: :new_book
  get "books/:id", to: "books#show", as: :book
  patch "books/:id", to: "books#update"
  delete "books/:id", to: "books#destroy"
  get "books/:id/edit", to: "books#edit", as: :edit_book

  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
