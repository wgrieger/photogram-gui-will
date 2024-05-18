class MainController <ApplicationController
  
  def photos
    @photos_all=Photo.all

    
    render({:template=>"list_photos"})
  end

  def photo_details 
    @photo_id=params.fetch("id")

    @find_photo=Photo.where(:id => @photo_id).first

    @owner=User.where(:id=>@find_photo.owner_id).first

    @comments=Comment.where(:photo_id=>@photo_id)


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

    redirect_to("/photos/#{@photo_id}")
  end

  def delete_img
    image=params.fetch("id")
    
    find_image= Photo.where(:id=> image).first
    find_image.destroy
  

    find_image.save

  redirect_to("/photos")
  end

  def add_comment
    @photo_id=params.fetch("photoid")
    @new_comment=params.fetch("comment")
    @author=params.fetch("authorid")

    @find_photo=Photo.where(:id => @photo_id).first

    @owner=User.where(:id=>@find_photo.owner_id).first

    @comments=Comment.where(:photo_id=>@photo_id)


    x=Comment.new
    x.photo_id=@photo_id.to_i
    x.body="@new_comment"
    x.author_id=@author.to_i
    x.save

    render({:template=>"photo_details"})

    #redirect_to("https://#effective-goldfish-v6p5479qjqq936qpv-3000.app.github.#dev/photos/#{@photo_id}", { :allow_other_host => true })

  end

  def new_photo
  image_url=params.fetch("imagesrc")
  @caption=params.fetch("caption")
  owner=params.fetch("owner")

  x=Photo.new
  x.image=image_url
  x.caption=@caption
  x.owner=owner
  x.save

  @newphoto=Photo.where(:caption=> @caption).first

  redirect_to("/photos/#{@newphoto.id}")


  end

end 
