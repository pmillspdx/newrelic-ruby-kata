class TweetsController < ApplicationController
  
  def index
    response = HTTParty.get('http://twitter.com/newrelic')
    
    parsed_data = Nokogiri::HTML.parse response.body
    parsed_data.css(".invisible").remove
    tweetNodes = parsed_data.css(".js-tweet-text")
    @nodes = tweetNodes.collect do |node|
      node.inner_html
    end
  end
end
