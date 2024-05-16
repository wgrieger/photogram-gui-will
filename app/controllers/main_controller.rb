class MainController <ApplicationController
  
  def users 
    render({:template=>"list_users"})
  end 

  def photos
    render({:template=>"list_photos"})
  end

  def photo_details 
    photo_id=params.fetch("id")
    render({:template => "photo_details"})
  end
  
end 
