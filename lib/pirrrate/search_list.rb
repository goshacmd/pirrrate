module Pirrrate
  # A list with search capabilities.
  class SearchList < PaginatedList
    attr_reader :url

    def initialize(base_url, query, page = 0, order = [:seeders, :asc], category = :all)
      order = Pirrrate.get_order(*order)
      category = Pirrrate.get_category(*category)
      @url = URL.new(base_url, '/search', [:query, :page, :order, :category], [query, page, order, category])
    end

    def query; url[:query] end
    def order; url[:order] end
    def category; url[:category] end

    def query=(value); url[:query] = value end

    def order=(value)
      url[:order] = Pirrrate.get_order(*value)
    end

    def category=(value)
      url[:category] = Pirrrate.get_category(*value)
    end
  end
end
