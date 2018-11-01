Rails.application.routes.draw do
  root "candidates#index"
  resources :candidates, except: [:edit, :update]
  resources :sessions, only: [:new,  :create, :destroy]
  resources :video_sessions, only: [:new, :create, :show, :destroy]
end
