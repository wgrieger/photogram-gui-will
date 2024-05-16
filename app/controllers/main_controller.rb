class MainController <ApplicationController
  
  def users 
    render({:template=>"list_users"})
  end 

  def photos
    render({:template=>"list_photos"})
  end
end 
