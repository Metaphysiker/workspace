class EventCalendarController < ApplicationController
  def calendar
    date = params[:date]
    if date.nil? || date.empty?
      @date = Date.today
    else
      @date = Date.parse(date)
    end

    only_month_days = @date.beginning_of_month..@date.end_of_month
    calendar_days = @date.beginning_of_month.beginning_of_week..@date.end_of_month.end_of_week
    @events = Event.where(starting: calendar_days).order(:starting)
    #@events = Event.incoming.first(10)
    #byebug
  end
end
