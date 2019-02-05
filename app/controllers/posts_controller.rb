class PostsController < ApplicationController
  def new
  	# 空のモデルをビューへ渡す
  	# @のついているインスタンス変数はビューファイルへ受け渡せる
  	@post = Post.new
  end

  def  create
  	#ストロングパラメータを使用・ローカル変数はビューファイルへ受け渡せない。アクション内でしか利用できない
  	post = Post.new(post_params)
  	#DBに保存する
  	post.save
  	#詳細画面へリダイレクト
  	redirect_to post_path(post.id)
  end

  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	post = Post.find(params[:id])
  	post.update(post_params)
  	redirect_to post_path(post.id)
  end

# 境界線 「ここから下はcontrollerの中でしか呼び出せません」
  private

  def post_params
  	params.require(:post).permit(:title, :body)
  end
end
