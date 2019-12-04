Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ru/ do
    resources :tobacco_cipher do
      post 'test_cipher', on: :collection
    end
    resources :contacts
    get 'welcome/index'
    root 'welcome#index'
  end
end
