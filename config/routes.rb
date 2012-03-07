Rails.application.routes.draw do

  namespace :admin do
    resources :taxons do
      get :children, :on => :member
    end
  end


  root :to => "admin/taxons#index"
  
end
