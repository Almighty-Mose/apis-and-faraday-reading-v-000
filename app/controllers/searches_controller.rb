class SearchesController < ApplicationController
  def search
  end

  def foursquare
    Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = CSLYDNWX2GHYS2KSM5S5RVO03WBF1KLD32LYJ0QD35CTZ1DD
      req.params['client_secret'] = 
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
end
