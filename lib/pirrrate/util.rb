module Pirrrate
  module Util
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

    extend self
  end
end
