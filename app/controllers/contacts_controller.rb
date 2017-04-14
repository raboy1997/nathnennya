class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to @contact, notice: 'Дякуємо за повідомлення , ми з Вами зв’яжемось в найближчий час ' }
      else
        format.html { redirect_to @contact, notice:'Неможливо відправити повідомлення.' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
end
