require 'rest-client'
class HomeController < ApplicationController
  def index
  	
  end
  
  	
  def retRows
  		print params
  		url = String.new ("https://api.mlab.com/api/1/databases/cse5331db/collections/table1?q={%22primary_k%22:"+params['id'].to_s+"}&apiKey=boIvPi_H-aiU-9D9GB03_CglOEMwFcsA")
        # raise DoubleRenderError if performed?
        # logger.info("Redirected to #{url}") if logger && logger.info?
        # response.redirect(url, interpret_status(status))
        # @performed_redirect = true
      	@res = RestClient.get (url)
      	render json: @res 
      end

end
