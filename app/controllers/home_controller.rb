class HomeController < ApplicationController
  def index
  end

  def search
    parameters = { term: params[:term], limit: 8 }
    render json: Yelp.client.search('Los Angeles', parameters)
  end
end
