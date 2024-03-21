Rails.application.routes.draw do
  resources :suppliers
  resources :purchase_orders
  resources :purchase_order_items
end
