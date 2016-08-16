class BlogsController < ApplicationController

  before_action except: [:index, :show] do
  if @current_user.nil?
    redirect_to sign_in_path, notice: "Please Sign In"
  end
end

def index
  @blogs = Blog.all.order(created_at: :desc)
end


def new
  @blog = Blog.new
end

  def create
    @blog = Blog.new
    @blog.user_id = @current_user.id
    @blog.subject = params[:blog][:subject]
    @blog.image = params[:blog][:image]
    @blog.body = params[:blog][:body]
    @blog.tags = params[:blog][:tags]
    if @blog.save!
      redirect_to root_path
    else
      render :new
    end
  end

end
