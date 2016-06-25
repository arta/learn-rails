class VisitorsController < ApplicationController

  def new
    @owner = Owner.new
    # render 'visitors/new' # <= Rails does automatically = the magick ... know rails conventions !!!!!!
  end

end
