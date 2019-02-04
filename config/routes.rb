Rails.application.routes.draw do
  get 'posts/new'
  get '/top' => 'root#top'

end
