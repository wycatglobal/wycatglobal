class Event < ApplicationRecord
	validates :event_title, :event_body, :event_date, :event_time, presence: true
end
