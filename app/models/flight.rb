class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def self.departures
    pluck(:departure).map { |departure| departure.strftime("%d/%m/%Y") }.sort.uniq
  end
end
