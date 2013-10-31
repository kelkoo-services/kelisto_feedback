# TODO: Decide between having routes on Rails engine or on KelistoFeedback engine
# KelistoFeedback::Engine.routes.draw do
Rails.application.routes.draw do
  resources :feedbacks, only: :create
end
