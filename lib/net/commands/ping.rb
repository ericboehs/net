# frozen_string_literal: true

require_relative '../command'

module Net
  module Commands
    # Pings a host
    class Ping < Net::Command
      def initialize(options)
        @options = options

        super()
      end

      def execute(_input: $stdin, output: $stdout)
        # Command logic goes here ...
        output.puts 'OK'
      end
    end
  end
end
