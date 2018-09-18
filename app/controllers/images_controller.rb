class ImagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @image = Image.new
    @albums = Album.all
  end

  def create
    @albums = Album.all
    @image = Image.new(image_params)

    if @image.save
      flash[:notice] = "Image Saved!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])

    if @image.update(image_params)
      flash[:notice] = "Image Updated!"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @image  = Image.find(params[:id])
    @image.destroy

    redirect_to root_path
  end

  private

  def image_params
    params.require(:image).permit(:image, :album_id, :image_title, :image_description)
  end
end
