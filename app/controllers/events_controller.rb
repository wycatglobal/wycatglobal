class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash[:notice] = "Event Saved!"
      redirect_to root_path
    else
      render 'new'
    end    
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      flash[:notice] = "Event Updated!"
      redirect_to events_path
    else
      render 'edit'
    end    
  end

  def destroy
    @event  = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  def index
  end

  def calendar
    @events = Event.all
    @events_by_date = @events.group_by(&:event_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:event_title, :event_body, :event_date, :event_time, :event_location)
  end
end
