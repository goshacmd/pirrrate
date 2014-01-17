module Pirrrate
  class Torrent < Struct.new(:title, :url, :category, :subcategory,
                             :magnent_link, :torrent_link, :created_at, :size,
                             :user, :seeders, :leechers)
  end
end
