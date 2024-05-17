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
    user= params.fetch("username")
    @user=User.where(:username => user).first


    render({:template=> "user_details"})
  end


  def update_user
  username_old=params.fetch("username")
  updated_username= params.fetch("update_username")

  find_user= User.where(:username=> username_old).first
  find_user.username=updated_username
  find_user.save

  @user=find_user

  render({:template=> "user_details"})

  end
end
