class HomeController < ApplicationController
  def index
    @counters = Counter.all
  end
end
