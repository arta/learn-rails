class VisitorsController < ApplicationController

  def new
    # Rails.logger.debug 'DEBUG :: entering new method'
    @owner = Owner.new
    flash[:notice] = 'Welcome!'
    flash[:alert] = 'My birthday is soon.'
    # logger.debug 'DEBUG :: Owner name is ' + @owner.name # <= works without using Rails.logger ...
    # raise 'Deliberate Failure'
    # render 'visitors/new', :layout => false
    # render 'visitors/new', :layout => 'special'
    # render 'visitors/new' # <= Rails does automatically = the magick ... know rails conventions !!!!!!
  end

end
