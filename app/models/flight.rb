class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def self.departures
    pluck(:departure).map { |departure| departure.strftime("%d/%m/%Y") }.sort.uniq
  end

  def self.search(params)
    flights = Flight.all
    flights = flights.where(from_airport_id: params[:from]) if params[:from].present?
    flights = flights.where(to_airport_id: params[:to]) if params[:to].present?
    flights = flights.where(departure: params[:departure]) if params[:departure].present?
    flights
  end
end
