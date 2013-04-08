class ResultsController < ApplicationController
  def index
    query = URI::encode(params['q'].encode('GBK'))
    url = "http://s.readnovel.com/web/search.php?searchconditions=0&keywords=#{query}&button=%CB%D1+%CB%F7"
    docuri = URI.parse(url)
    doc = nil
    Net::HTTP.start docuri.host, docuri.port do |http|
      res = http.get(docuri.path)
      doc = Nokogiri::HTML(res.body)
    end
    doc.css("#sortListPic").child
  end

  def show
  end

  def update
  end

end
