class EventsController < ApplicationController
  def index
    @events = Event.all
    render :json => @events
  end

  def new
    @event = Event.new
  end
  
  def create
    
  end

  def update
  end

  def destroy
  end

  def show
    # not sure of this syntax is correct
    @event = Event.find(params[:id])
    render :json => @event
  end

end
