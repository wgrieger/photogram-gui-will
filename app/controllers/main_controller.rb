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
  
  def photo_update
    image=params.fetch("id")
    updated_link= params.fetch("new_link")
    updated_caption=params.fetch("new_caption")

    find_image= Photo.where(:id=> image).first
    find_image.image=updated_link
    find_image.caption=updated_caption
  

    find_image.save

    @photo_id=image

    @find_photo=Photo.where(:id => @photo_id).first

    @owner=User.where(:id=>@find_photo.owner_id).first

    render({:template=> "photo_details"})

  end

end 
