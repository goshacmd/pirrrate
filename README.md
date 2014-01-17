# Pirrrate

A basic Ruby API client for The Pirate Bay.

## Installation

Add this line to your application's Gemfile:

    gem 'pirrrate'

Or install it yourself as:

    $ gem install pirrrate

## Usage

```ruby
require 'pirrrate'

search = Pirrrate.search('breaking bad s01e01', 0, [:seeders, :desc], [:video, :hd_tv_shows])
search.torrents
# => [ #<Torrent>, #<Torrent> ]

bb = search.torrents.first # best result

MagicalTorrentClientAPI.download_magent(bb.magnet_link)
# download the torrent
```

## Contributing

1. Fork it (http://github.com/goshakkk/pirrrate/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

[MIT](LICENSE).
