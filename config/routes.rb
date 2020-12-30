Rails.application.routes.draw do
  get '/event_calendar/calendar/(:date)', to: 'event_calendar#calendar', as: 'event_calendar'

  resources :events
  devise_for :users
  root to: 'static_pages#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
