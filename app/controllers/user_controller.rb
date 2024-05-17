class UserController <ApplicationController
  def list_users 
    @users_all=User.all

    render({:template=>"list_users"})
  end 

  def add_user
    new_username= params.fetch("username_input")
    
    u= User.new
    u.username= new_username
    u.save

    redirect_to("/users/#{new_username}")
  end
 
  def user_details
    @user= params.fetch("username")

    render({:template=> "user_details"})
  end


end
