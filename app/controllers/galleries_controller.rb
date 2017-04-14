class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def new
    @gallery = Gallery.new
  end

  def edit
  end

  def show
  end

  def create
    @gallery = Gallery.new(gallery_params)
    respond_to do |format|
      if @gallery.save
        format.html { redirect_to @gallery, notice: 'Галерея була успішно створенна' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @gallery.destroy
    respond_to do |f|
      f.html { redirect_to gallery_url , notice: 'Галерея була видалена'}
    end
  end

  def update
    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to @gallery, notice: "Галерея була  успішно обновленна" }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:g_title , :g_body , :g_img  , :g_link)
  end
end
