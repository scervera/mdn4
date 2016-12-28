class HomeController < ApplicationController
  layout "interior"

  def index
  	@sponsors = Sponsor.all
  end

end
