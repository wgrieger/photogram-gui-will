class MainController <ApplicationController
  
  def photos
    render({:template=>"list_photos"})
  end

  def photo_details 
    @photo_id=params.fetch("id")

    @find_photo=Photo.where(:id => @photo_id).first

    @owner=User.where(:id=>@find_photo.owner_id).first

    render({:template => "photo_details"})


  end
  
end 
