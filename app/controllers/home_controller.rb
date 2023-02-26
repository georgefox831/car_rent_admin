class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    # @results = Geocoder.search(ip)
    @results = request.ip
    puts @results
  end
end
