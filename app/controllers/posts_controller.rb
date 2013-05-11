class PostsController < ApplicationController

  def index
    @posts = Post.all
    @posts = @posts.sort_by(&:posted_time).reverse
    @users = User.all
    @users_leaderboard = @users.sort_by { |user| Post.where(:user_id => user.id).count}.reverse
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def new
    @post = Post.new
    @statuses = ["Coding", "Hanging Out", "Lunch Anyone?"]
    @durations = ["1:00","2:00","3:00","4:00","5:00","6:00","7:00","8:00","9:00","10:00","11:00","12:00"]
    @user = User.find_by_id(session[:user_id])
  end

  def create
    @post = Post.new
    @post.user_id = params[:user_id]
    @post.location_id = params[:location_id]
    @post.status = params[:status]
    @post.duration = params[:duration]
    @post.description = params[:description]
    @post.posted_time = params[:posted_time]

    if @post.save
            redirect_to posts_url
          else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by_id(params[:id])
    @statuses = ["Coding", "Hanging Out", "Lunch Anyone?"]
    @durations = ["1 hour", "2 hours", "3 hours", "4+ hours"]
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @post = Post.find_by_id(params[:id])
    @post.user_id = params[:user_id]
    @post.location_id = params[:location_id]
    @post.status = params[:status]
    @post.duration = params[:duration]
    @post.description = params[:description]
    @post.posted_time = params[:posted_time]

    if @post.save
            redirect_to posts_url
          else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    @post.destroy
        redirect_to posts_url
      end
end
