class UserController <ApplicationController
  def list_users 
    @users_all=User.all
    
    
    render({:template=>"list_users"})
  end 

 
end
