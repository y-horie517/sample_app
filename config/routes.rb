Rails.application.routes.draw do
  get 'posts/new'
# /topというURLにアクセスしたときに、rootコントローラのtopアクションが呼び出される
  get '/top' => 'root#top'

  post '/posts' => 'posts#create'
end
