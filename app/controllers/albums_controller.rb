class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      flash[:notice] = "Album Created!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @album = Album.find(params[:id])
    @albums = Album.all
    @images = @album.images
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      flash[:notice] = "Album Updated!"
      redirect_to album_path(params[:id])
    else
      render 'edit'
    end
  end

  def destroy
    @album  = Album.find(params[:id])
    @album.destroy

    redirect_to root_path
  end

  def show
    @album = Album.find(params[:id])
    @images = @album.images.paginate(:page => params[:page], :per_page => 20)
  end

  private

  def album_params
    params.require(:album).permit(:name, :description, :cover_image)
  end
end
