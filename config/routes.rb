Rails.application.routes.draw do
  root 'exchanges#index'
  post 'convert', to: 'exchanges#convert'
  post 'convert_bitcoin', to: 'exchanges#convert_bitcoin'
end