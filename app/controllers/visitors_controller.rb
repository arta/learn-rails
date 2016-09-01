class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Signed up #{@visitor.email}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:visitor).permit(:email)
  end

end

# leaving old code for instructional purposes (also leaving Ownder model):
=begin
class VisitorsController < ApplicationController
  def new
    # Rails.logger.debug 'DEBUG :: entering new method'
    @owner = Owner.new
    # flash[:notice] = 'Welcome!'
    # flash[:alert] = 'My birthday is soon.'
    # logger.debug 'DEBUG :: Owner name is ' + @owner.name # <= works without using Rails.logger ...
    # raise 'Deliberate Failure'
    # render 'visitors/new', :layout => false
    # render 'visitors/new', :layout => 'special'
    # render 'visitors/new' # <= Rails does automatically = the magick ... know rails conventions !!!!!!
  end
end
=end
