class UserController <ApplicationController
  def list_users 
    @users_all=User.all

    render({:template=>"list_users"})
  end 

  def add_user
    new_username= params.fetch("username_input")

    redirect_to("/users/#{new_username}")
  end
 
  def user_details
    render({:template=> "user_details"})
  end

end
