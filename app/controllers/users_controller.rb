class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.source_url = params[:source_url]
    @user.tsl_class = params[:tsl_class]
    @user.email = params[:email]
    @user.twitter = params[:twitter]

    if @user.save
            redirect_to users_url
          else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.name = params[:name]
    @user.source_url = params[:source_url]
    @user.tsl_class = params[:tsl_class]
    @user.email = params[:email]
    @user.phone = params[:phone]
    @user.twitter = params[:twitter]

    if @user.save
            redirect_to users_url
          else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
      end
end
