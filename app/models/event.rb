class Event < ApplicationRecord

  def self.to_fullcalendar
    array = []
    Event.all.each do |event|
      array.push(
        {
          title: event.title.to_s,
          start: event.starting.strftime("%Y-%m-%dT%H:%M:%S"),
        end: event.ending.strftime("%Y-%m-%dT%H:%M:%S")
        }
      )
    end
    array.to_json
  end

  scope :between, -> (start_of_date, end_of_date) { where(starting: start_of_date..end_of_date) }

end
