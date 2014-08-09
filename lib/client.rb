require 'httparty'

module SleepCloud

class Client

  BASE_URL = "https://sleep-cloud.appspot.com"

  include HTTParty

  attr_accessor :token

  def initialize(token)
    @token = token
  end

  def sleeps(params={})
    get_helper("/fetchRecords",params)
  end

  private

  def get_helper(path, params={})
    path = "/" + path unless path[0] == '/'
    url = BASE_URL + path
    stringified_params = params.collect do |k, v|
      "#{k}=#{v}"
    end.sort * '&'
    full_url = url + "?" + stringified_params
    response = self.class.get full_url,
      { :headers => { "Authorization" => "Bearer #{token}" } }
    if response.parsed_response.is_a?(String)
      JSON.parse(response.parsed_response)  
    else
      response.parsed_response
    end
  end


end # class Client

end # module SleepCloud
