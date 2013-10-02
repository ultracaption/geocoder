require 'geocoder/results/base'
require 'geocoder/results/jay_geo'

module Geocoder::Lookup
  class JayGeo < Base
    def name
      "JayGeo"
    end

    def query_url(query)
      "#{url}/find?q=#{query}"
    end

    def url
      configuration[:url]
    end

    def results(query)
      result = fetch_data(query)

      valid_result?(result) ? [result] : []
    end

    def valid_result?(result)
      result && !result['error']
    end
  end
end
