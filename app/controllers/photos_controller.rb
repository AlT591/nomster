class PhotosController < ApplicationController

      before_action :authenticate_user!

         def create
            @place = Place.find(params[:place_id])
            @place.photos.create(photo_params.merge(user: current_user))
            redirect_to place_path(@place)
        end

      private


            #39step 7
              def photo_params
                params.require(:photo). permit(:picture)
              end
          
      
end
