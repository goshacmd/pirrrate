require 'nokogiri'
require 'open-uri'
require 'chronic'

require 'pirrrate/util'
require 'pirrrate/url'
require 'pirrrate/list'
require 'pirrrate/paginated_list'
require 'pirrrate/search_list'
require 'pirrrate/torrent'
require 'pirrrate/constants'
require 'pirrrate/version'

module Pirrrate
  class << self
    # @return [String] base URL
    attr_accessor :base_url

    # Create a search list.
    #
    # @param query [String] search query
    # @param page [Integer, String] page number
    # @param order [Symbol, Array] ordering (see {ORDERS})
    # @param category [Symbol, Array] search category (see {CATEGORIES})
    #
    # @return [SearchList]
    def search(query, page: 0, order: [:seeders, :asc], category: :all)
      SearchList.new(base_url, query, page, order, category)
    end

  end

  self.base_url = 'http://thepiratebay.se'
end
