Rails.application.routes.draw do
  resources :suppliers
  resources :purchase_orders
  resources :purchase_order_items
  resources :good_recieve_notes
  resources :received_items


end
