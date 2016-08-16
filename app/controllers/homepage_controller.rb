class HomepageController < ApplicationController
  def homepage
    @contact = Contact.new
    @blogs = Blog.all.last(3)
    @user = User.find_by id: params[:id]
    @blog = Blog.find_by id: params[:id]
  end


  def create
    @contact = Contact.new
    @contact.name = params[:contact][:name]
    @contact.subject = params[:contact][:subject]
    @contact.email = params[:contact][:email]
    @contact.message = params[:contact][:message]
     @contact.save
      redirect_to root_path, notice:"Your message was sent. I will get back to you as soon as possible."

  end

end
