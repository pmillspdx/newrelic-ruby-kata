class BigListController < ApplicationController
  def index
	@all_sites = WebSite.count
	@first_site = WebSite.take
  end
end
