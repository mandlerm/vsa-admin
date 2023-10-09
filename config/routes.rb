Rails.application.routes.draw do
  get 'teacher/new'
  root "application#hello"
  
  get 'static_pages/home'
  get 'static_pages/help'
end
