Rails.application.routes.draw do
  get 'posts/new'

# /topというURLにアクセスしたときに、rootコントローラのtopアクションが呼び出される
  get '/top' => 'root#top'
# /postsというURLにpostでアクセスしたときに
#postsコントローラのcreateアクションが呼び出されるように設定
  post '/posts' => 'posts#create'

  get '/posts' => 'posts#index'

#/posts/1や/posts/2など
  get '/posts/:id' => 'posts#show', as:'post'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch '/posts/:id' => 'posts#update', as:'update_post'

  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
