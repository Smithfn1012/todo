Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todo_list do
    resources :todo_items do
     member do
      patch :complete
     end
   end
 end
 root "todo_list#index"
end
