class HomeController < ApplicationController
  layout "interior"

  def index
  	@sponsors = Sponsor.all
  	# @mannerisms = Mannerism.order("RAND()").limit(1)
    @mannerism = Mannerism.uncached { Mannerism.order_by_rand.first }

  end

end
