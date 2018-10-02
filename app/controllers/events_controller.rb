class EventsController < ApplicationController
  def index
    @events = Event.all
    render :json => @events
  end

  def new
    @event = Event.new
  end

  def create
    if @event.valid?
      @event.save
      redirect_to show(@event)
    else
      # return error
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    if @event.valid?
      @event = Event.update_attributes(event_params)
      render :json => 'success'
    else
      render :json => @event.errors
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  def show
    # not sure if this syntax is correct
    @event = Event.find(params[:id])
    render :json => @event
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :starts, :location)
  end
end
