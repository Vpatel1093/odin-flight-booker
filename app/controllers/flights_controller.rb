class FlightsController < ApplicationController
  def index
    @airports = Airport.pluck(:code, :id).sort.uniq
    @departures = Flight.departures
    @passengers = (1..4)
  end
end
