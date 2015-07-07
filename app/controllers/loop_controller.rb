class LoopController < ApplicationController
  def index
    @sites = WebSite.includes(:url, :icon).limit(1000)
  end
end
