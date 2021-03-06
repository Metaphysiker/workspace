class EventCalendarController < ApplicationController
  def calendar
    date = params[:date]
    if date.nil? || date.empty?
      @date = Date.today
    else
      @date = Date.parse(date)
    end

    only_month_days = @date.beginning_of_month..@date.end_of_month
    calendar_days = @date.beginning_of_month.beginning_of_week - 1.day..@date.end_of_month.end_of_week + 1.day
    @events = Event.where(starting: calendar_days).order(:starting)
  end

  def full_year_calendar
    date = params[:date]
    if date.nil? || date.empty?
      @date = Date.today
    else
      @date = Date.parse(date)
    end

    @events = Event.where(starting: @date.beginning_of_year..@date.end_of_year).order(:starting)
  end
end
