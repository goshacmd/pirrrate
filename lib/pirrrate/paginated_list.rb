module Pirrrate
  # A list with pagionation.
  class PaginatedList < List
    def page; url[:page] end

    def page=(value); url[:page] = value end

    def next_page
      self.page += 1
    end

    def previous_page
      self.page = [page - 1, 0].max
    end
  end
end
