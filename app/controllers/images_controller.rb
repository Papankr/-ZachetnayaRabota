class ImagesController < ApplicationController
  before_action :has_session, only: [:new]

  def index
    @images = Image.all
  end

  def has_session
    unless user_signed_in?
      redirect_to new_user_session_path,
                  notice: t(:'Для добавления альбома нужно авторизироваться')
    end
  end

  def show; end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to indeximage_path
    else
      render :new
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to indeximage_path
  end

  private

  def image_params
    params.require(:image).permit(:image, :title, :autor)
  end
end
