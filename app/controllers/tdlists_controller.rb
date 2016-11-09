class TdlistsController < ApplicationController
  def index
    @tdlists = Tdlist.all
  end

  def new
    @tdlist = Tdlist.new
  end

  def show
    @tdlist = Tdlist.find(params[:id])
  end

  def edit
    @tdlist = Tdlist.find(params[:id])

    
  end

  def create
    # Saving the post with the form values into the database
    @tdlist = Tdlist.new(tdlist_params)
    if @tdlist.save
      # A successfule new record in the database
      redirect_to tdlist_path(@tdlist)
    else
      # Unsuccessful create
      render :new
    end
  end

  # Responsible for finding a post in the database
  # Trying to update that post with the given params
  # Redirects or renders depending on the outcome
  # This menthod has NO view associated with it!
  def update
    @tdlist = Tdlist.find(params[:id])
    if @tdlist.update(tdlist_params)
      #Successful update in database
      redirect_to tdlist_path(@tdlist)
    else
      # Unsuccessful database update
      render :edit
    end
  end

  # Finds a single post in the database
  # Removes that record
  # Redirects to the index method
  # This method has NO view asscociated with it!
  def destroy
    @tdlist = Tdlist.find(params[:id])
    @tdlist.destroy
    redirect_to tdlist_path
  end

  private
  # strong params
  def tdlist_params
    params.require(:tdlist).permit(:item)
  end
end