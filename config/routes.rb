Rails.application.routes.draw do
  get 'posts/new'

# /topというURLにアクセスしたときに、rootコントローラのtopアクションが呼び出される
  get '/top' => 'root#top'
# /postsというURLにpostでアクセスしたときに
#postsコントローラのcreateアクションが呼び出されるように設定
  post '/posts' => 'posts#create'

  get '/posts' => 'posts#index'
end
