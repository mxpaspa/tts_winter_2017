Rails.application.routes.draw do
  root 'welcome#index' # controller#action(same as the html page)

  get 'about_stuff' => 'welcome#about'

  get 'contact_me' =>'welcome#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
