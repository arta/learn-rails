class ContactsController < ApplicationController

  ###############################################################
  # the old way, page paradigm:
  ###############################################################
  def process_form
    # Rails.logger.debug "DEBUG: params are #{params}"

    # crude kinda validation:
    begin
      if params[:contact][:name].blank?
        raise 'Name is blank!'
      end
      if params[:contact][:email].blank?
        raise 'Email is blank!'
      end
      if params[:contact][:content].blank?
        raise 'Message is blank!'
      end
    rescue => the_error
      puts "#{the_error.message}"
    end

    redirect_to root_path, notice: "Received request from #{params[:contact][:name]}"
    # flash[:notice] = "Received request from #{params[:contact][:name]}"
    # redirect_to root_path
  end

  ###############################################################
  # the Rails way, web app paradigm:
  ###############################################################
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      # TODO send message
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
