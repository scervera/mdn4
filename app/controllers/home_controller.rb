class HomeController < ApplicationController
  layout "interior"

  def index
  	@sponsors = Sponsor.all
  	@mannerisms = Mannerism.order("RAND()").limit(1)


  end

end
