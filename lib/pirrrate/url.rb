module Pirrrate
  # A segmented URL.
  class URL
    # Initialize a new +URL+.
    #
    # @param host [String]
    # @param base [String]
    # @param segments [Array<Symbol>]
    # @param defaults [Array]
    def initialize(host, base = '', segments = [], defaults = [])
      @host = host
      @base = base
      @segments = segments.zip(defaults).to_h
    end

    # Get value of segment with name of +name+.
    #
    # @param name [Symbol]
    def [](name)
      @segments[name]
    end

    # Set value of segment with name of +name+.
    #
    # @param name [Symbol]
    # @param value [Object]
    def []=(name, value)
      @segments[name] = value
    end

    # Convert to URI.
    #
    # @return [URI]
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
