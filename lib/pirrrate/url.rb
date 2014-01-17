module Pirrrate
  # A segmented URL.
  class URL
    def initialize(host, base = '', segments = [], defaults = [])
      @host = host
      @base = base
      @segments = segments.zip(defaults).to_h
    end

    def [](name)
      @segments[name]
    end

    def []=(name, value)
      @segments[name] = value
    end

    def to_uri
      segments = @segments.values.map { |v| URI.escape(v.to_s) }
      URI("#{@host}#{@base}/#{segments.join('/')}")
    end

    def to_s
      to_uri.to_s
    end

    def inspect
      to_s
    end
  end
end
