class BigListController < ApplicationController
  def index
#    @all_sites = WebSite.all.to_a
	@all_sites = WebSite.count
#    @first_site = @all_sites.first
	@first_site = WebSite.includes(:url).limit(1)
  end
end
