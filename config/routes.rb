Rails.application.routes.draw do
  resources :suppliers
  resources :purchase_orders
  resources :purchase_order_items
  get 'good_recieve_notes/generate_grn/:id', to: 'good_recieve_notes#generate_grn', as: 'generate_grn'
  resources :good_recieve_notes
  resources :received_items


end
