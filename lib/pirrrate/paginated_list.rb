module Pirrrate
  # A list with pagionation.
  class PaginatedList < List
    # Get current page.
    def page
      url[:page]
    end

    # Set page.
    def page=(value)
      url[:page] = value
    end

    # Increment page value.
    def next_page
      self.page += 1
    end

    # Decrement page value.
    def previous_page
      self.page = [page - 1, 0].max
    end
  end
end
