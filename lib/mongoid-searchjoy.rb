require 'mongoid/searchjoy/search'
require 'mongoid/searchjoy/track'
require 'mongoid/searchjoy/engine'
require 'mongoid/searchjoy/version'

require 'chartkick'
require 'groupdate'

module Mongoid
  module Searchjoy
    # time zone
    mattr_reader :time_zone

    def self.time_zone=(time_zone)
      @@time_zone = time_zone.is_a?(String) ? ActiveSupport::TimeZone.new(time_zone) : time_zone
    end

    # top searches
    mattr_accessor :top_searches
    self.top_searches = 100

    # conversion name
    mattr_accessor :conversion_name
  end
end

if defined?(Searchkick)
  module Searchkick
    module Search
      include Mongoid::Searchjoy::Track

      alias_method :search_without_track, :search
      alias_method :search, :search_with_track
    end

    class Results
      attr_accessor :search
    end
  end
end
