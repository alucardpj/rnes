class DemoController < ApplicationController
  def index
    @queries = Query.all
  end
end
