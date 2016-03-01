Rails.application.routes.draw do
  resources :cats, :only => [:create, :destroy, :index, :show, :update, :new, :edit]
end
