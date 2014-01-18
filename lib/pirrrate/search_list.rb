module Pirrrate
  # A list with search capabilities.
  class SearchList < PaginatedList
    include Util

    # Base search URL.
    BASE = '/search'

    # @return [URL] list url
    attr_reader :url

    # Initialize a new +SearchList+.
    #
    # @param base_url [String]
    # @param query [String]
    # @param page [Integer, String]
    # @param order [Integer, String, Array, Symbol]
    # @param category [Integer, String, Array, Symbol]
    def initialize(base_url, query, page = 0, order = [:seeders, :asc], category = :all)
      order = get_order(*order)
      category = get_category(*category)
      @url = URL.new(base_url, BASE, [:query, :page, :order, :category], [query, page, order, category])
    end

    # Get current query.
    #
    # @return [String]
    def query
      url[:query]
    end

    # Get current ordering.
    #
    # @return [Integer, String]
    def order
      url[:order]
    end

    # Get current category.
    #
    # @return [Integer, String]
    def category
      url[:category]
    end

    # Set query.
    #
    # @param value [String]
    def query=(value)
      url[:query] = value
    end

    # Set ordering.
    #
    # @param value [Integer, String, Array, Symbol]
    def order=(value)
      url[:order] = get_order(*value)
    end

    # Set category.
    #
    # @param value [Integer, String, Array, Symbol]
    def category=(value)
      url[:category] = get_category(*value)
    end
  end
end
