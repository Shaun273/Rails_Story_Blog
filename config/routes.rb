Rails.application.routes.draw do
  get 'about', to: 'misc#About', as: 'about'
  get 'contact', to: 'misc#Contact', as: 'contact'
  get 'terms', to: 'misc#Terms', as: 'terms'
  get 'faq', to: 'misc#FAQ', as: 'faq'
  get 'index', to: 'misc#Index', as: 'index'
  resources :stories do
    resources :comments
  end

  root 'misc#Index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
