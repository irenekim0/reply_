class BoardController < ApplicationController
  def index
    #목록
    @list_post = Post.all 
    #모델의 전부를 꺼내서 비둘기에 담아주기
  end

  def show
    @view_post = Post.find(params[:post_id])
    #url로 넘겨받은 포스트아이디로로 찾음#뷰파일로 넘길거니깐 비둘기
  end

  def new
  end

  def create
  
  #전송받은 데이터를 모델에 저장하는 부분분
  new_post = Post.new#모델에 행을 한개 만듬
  new_post.title = params[:title]
  new_post.editor = params[:editor]
  new_post.content = params[:content]
  new_post.save
  
  redirect_to '/'
  end

  def edit
    @upd_post = Post.find(params[:post_id])
  end

  def update
    
    upd_post = Post.find(params[:post_id])
    #id title editor content
    upd_post.title = params[:title]
    upd_post.editor = params[:editor]
    upd_post.content = params[:content]
    upd_post.save
    
    redirect_to '/'
  end

  def delete
    del_post = Post.find(params[:post_id])
    del_post.destroy
    redirect_to '/'
  end
end
