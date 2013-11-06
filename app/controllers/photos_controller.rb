class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  # GET /photos
  # GET /photos.json
  def index
    
    #@photos = Photo.all
    @photos = current_user.photos.paginate(:page => params[:page], :per_page => 20)
    @album = current_user.albums.all.collect{|p|[p.name]}
    @albums = current_user.albums.all
    
    @call_from = "photos"
    #render :template => 'albums/index'
    
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new()
    @album = params[:album]
  end

  # GET /photos/1/edit
  def edit
  end
  
  def upload_bulk_images
  end

  # POST /photos
  # POST /photos.json
  def create
    #@photo = Photo.new(photo_params)
    @photo = Photo.create( photo_params )
    @album = Album.where("id=#{params[:album_id]}") if params[:album_id]

    respond_to do |format|
      if @photo.save
        #render :text => @photo.inspect and return false
        if params[:album_id]
          format.html { redirect_to @album, notice: 'Photo was successfully uploaded.' }
          format.json { render action: @album, status: :created, location: @album }
        end
        #render :text => @photo.inspect and return false
        #format.html { redirect_to @photo, notice: 'Photo was successfully uploaded.' }
        #format.json { render json:  @photo, status: :created }
        format.html {
          render :json => [@photo.to_jq_upload].to_json,
          :content_type => 'text/html',
          :layout => false
        }
        format.json { render json: {files: [@photo.to_jq_upload]}, status: :created, location: @photo }
      else
        format.html { render action: 'new' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end





  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:album_id,:user_id, :name, :description, :location, :privacy, :binary_data, :avatar)
    end
end

