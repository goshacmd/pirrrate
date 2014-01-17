require 'nokogiri'
require 'open-uri'
require 'chronic'

require 'pirrrate/url'
require 'pirrrate/list'
require 'pirrrate/paginated_list'
require 'pirrrate/search_list'
require 'pirrrate/torrent'
require 'pirrrate/constants'
require 'pirrrate/version'

module Pirrrate
  class << self
    attr_accessor :base_url

    def search(query, page = 0, order = [:seeders, :asc], category = :all)
      SearchList.new(base_url, query, page, order, category)
    end

    def get_order(field, dir = :asc)
      return field if Integer === field || String === field
      ORDERS[field][dir == :asc ? 0 : 1]
    end

    def get_category(general, specific = :all)
      return general if Integer === general || String === general
      c = CATEGORIES[general]
      c = c[specific] if Hash === c
      c
    end
  end

  self.base_url = 'http://thepiratebay.se'
end
