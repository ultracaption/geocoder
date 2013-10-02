require 'geocoder/results/base'

module Geocoder::Result
  class JayGeo < Base
    def state
      @data['region_name']
    end

    def state_code
      @data['region_name']
    end

    def country
      @data['country_name']
    end

    def country_code
      @data['country_code']
    end

    def address(format = :full)
      "#{city}, #{state_code} #{country_code}"
    end
  end
end
